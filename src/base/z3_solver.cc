// Copyright (c) 2008, Jacob Burnim (jburnim@cs.berkeley.edu)
//
// This file is part of CREST, which is distributed under the revised
// BSD license.  A copy of this license can be found in the file LICENSE.
//
// This program is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See LICENSE
// for details.

#include <assert.h>
#include <limits>
#include <queue>
#include <set>
#include <stdio.h>
#include <stdlib.h>
#include <utility>
#include <z3++.h>
#include <chrono>
#include "base/z3_solver.h"

using std::make_pair;
using std::numeric_limits;
using std::queue;
using std::set;

using namespace z3;

namespace crest {

typedef vector<const SymbolicPred*>::const_iterator PredIt;

bool Z3Solver::IncrementalSolve(const vector<value_t>& old_soln,
				   const map<var_t,type_t>& vars,
				   const vector<const SymbolicPred*>& constraints,
				   map<var_t,value_t>* soln) {
  set<var_t> tmp;
  typedef set<var_t>::const_iterator VarIt;

  // Build a graph on the variables, indicating a dependence when two
  // variables co-occur in a symbolic predicate.
  vector< set<var_t> > depends(vars.size());
  for (PredIt i = constraints.begin(); i != constraints.end(); ++i) {
    tmp.clear();
    (*i)->AppendVars(&tmp);
    for (VarIt j = tmp.begin(); j != tmp.end(); ++j) {
      depends[*j].insert(tmp.begin(), tmp.end());
    }
  }

  // Initialize the set of dependent variables to those in the constraints.
  // (Assumption: Last element of constraints is the only new constraint.)
  // Also, initialize the queue for the BFS.
  map<var_t,type_t> dependent_vars;
  queue<var_t> Q;
  tmp.clear();
  constraints.back()->AppendVars(&tmp);
  for (VarIt j = tmp.begin(); j != tmp.end(); ++j) {
    dependent_vars.insert(*vars.find(*j));
    Q.push(*j);
  }

  // Run the BFS.
  while (!Q.empty()) {
    var_t i = Q.front();
    Q.pop();
    for (VarIt j = depends[i].begin(); j != depends[i].end(); ++j) {
      if (dependent_vars.find(*j) == dependent_vars.end()) {
	Q.push(*j);
	dependent_vars.insert(*vars.find(*j));
      }
    }
  }

  // Generate the list of dependent constraints.
  vector<const SymbolicPred*> dependent_constraints;
  for (PredIt i = constraints.begin(); i != constraints.end(); ++i) {
    if ((*i)->DependsOn(dependent_vars))
      dependent_constraints.push_back(*i);
  }

  soln->clear();
  if (Solve(dependent_vars, dependent_constraints, soln)) {
    // Merge in the constrained variables.
    for (PredIt i = constraints.begin(); i != constraints.end(); ++i) {
      (*i)->AppendVars(&tmp);
    }
    for (set<var_t>::const_iterator i = tmp.begin(); i != tmp.end(); ++i) {
      if (soln->find(*i) == soln->end()) {
	soln->insert(make_pair(*i, old_soln[*i]));
      }
    }
    return true;
  }

  return false;
}


bool Z3Solver::Solve(const map<var_t,type_t>& vars,
			const vector<const SymbolicPred*>& constraints,
			map<var_t,value_t>* soln) {

  typedef map<var_t, type_t>::const_iterator VarIt;

  context ctx;
  solver s = tactic(ctx, "smt").mk_solver();

  map<var_t, Z3_ast> x_expr;
  for (VarIt i = vars.begin(); i != vars.end(); ++i) {
    char buff[32];
    snprintf(buff, sizeof(buff), "x%d", i->first);
    x_expr[i->first] = ctx.int_const(buff);
    expr e(ctx, x_expr[i->first]);
    //assert(e);
    s.add(e >= kMinValue[i->second]);
    s.add(e <= kMaxValue[i->second]);
  }
  { // Constraints.
    for (PredIt i = constraints.begin(); i != constraints.end(); ++i) {
      const SymbolicExpr& se = (*i)->expr();
      expr_vector terms(ctx);
      expr const_term = ctx.int_val(static_cast<int64_t>(se.const_term()));
      terms.push_back(const_term);
      for (SymbolicExpr::TermIt j = se.terms().begin(); j != se.terms().end(); ++j) {
        expr ex_first(ctx, x_expr[j->first]);
        expr ex_second = ctx.int_val(static_cast<int64_t>(j->second));
        expr term = ex_first * ex_second;
        terms.push_back(term);
      }
      // yices_expr e = yices_mk_sum(ctx, &terms.front(), terms.size());
      expr terms_expr = sum(terms);
      // expr pred(ctx);
      switch((*i)->op()) {
      case ops::EQ:  s.add(terms_expr == 0); break;
      case ops::NEQ: s.add(terms_expr != 0); break;
      case ops::GT:  s.add(terms_expr > 0); break;
      case ops::LE:  s.add(terms_expr <= 0); break;
      case ops::LT:  s.add(terms_expr < 0); break;
      case ops::GE:  s.add(terms_expr >= 0); break;
      default:
	fprintf(stderr, "Unknown comparison operator: %d\n", (*i)->op());
	exit(1);
      }
    }
  }

  bool success = (s.check() == sat);

  if (success) {
    soln->clear();
    model m = s.get_model();
    // std::cout << "s : " << s << std::endl;
    for (VarIt i = vars.begin(); i != vars.end(); ++i) {
      expr x = m.eval(expr(ctx, x_expr[i->first]));
      long val;
      Z3_get_numeral_int64(ctx, x, &val);
      soln->insert(make_pair(i->first, val));
    }
  }
  return success;
}


}  // namespace crest
