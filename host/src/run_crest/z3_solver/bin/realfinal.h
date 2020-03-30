#ifndef __REALFINAL_H__
#define __REALFINAL_H__


#include"z3++.h"
#include<fstream>
#include<iostream>
#include<string>


using namespace z3;

namespace patch
{
    template < typename T > std::string to_string( const T& n )
    {
        std::ostringstream stm ;
        stm << n ;
        return stm.str() ;
    }
}
z3::context c;
z3::solver s(c);


static const char* parse_string_solve(const char* line) { //text file을 인자로 받음
    std::string h = "";
    // std::cout << "parse string\n";
    std::cout << "parse_string_solve : "<< line << '\n';
    // z3::context c;
    // z3::solver s(c);
    s.reset();
    s.from_string(line); //받은 text file parsing

    std::cout << s.check() << "\n";

    bool success = (s.check() == sat);

    model m = s.get_model();
    std::cout << "m:" << m << "\n";

        if(success){

            int num_constants = m.num_consts();
            for (int i = 0; i < num_constants; i++) {
                func_decl fd = m.get_const_decl(i);
                z3::expr r = m.get_const_interp(fd);
                int out;
                Z3_get_numeral_int(c, r, &out);
                std::string final_out = patch::to_string(out);
                //std::cout << fd.name() << "," << r << "\n"; //결과 찍은 순서대로는 나옴
                h += fd.name().str() + "," + final_out + "\n" ;
                std::cout << h << "\n";
                //writeFile << fd.name() << "," << r << "\n";

            }//for
        }//if

        else{
            h = "unsat\n";
        }
        return h.c_str();
}
#endif  // __REALFINAL_H__
