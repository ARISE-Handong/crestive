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
#include <stdio.h>
#include <sys/time.h>
#include <getopt.h>

#include "run_crest/concolic_search.h"

struct option long_options[] =
{
    {"random", no_argument, 0, 0},
    {"random_input", no_argument, 0, 0},
    {"pdfs", optional_argument, 0, 'p'},
    {"rdfs", optional_argument, 0, 'd'},
    {"cfg", no_argument, 0, 0},
    {"cfg_baseline", no_argument, 0, 0},
    {"hybrid", no_argument, 0, 0},
    {"uniform_random", optional_argument, 0, 0},
	{"random_init", no_argument, 0, 'r'},
    {0,0,0,0}
};

void print_help() {
    fprintf(stderr,
            "Syntax: run_crest <program> "
            "<number of iterations> "
            "-<strategy> [strategy options] [-random_init]\n");
    fprintf(stderr,
            "Strategies include: "
            "rdfs, pdfs, cfg, random, uniform_random, random_input \n");
}

int main(int argc, char* argv[]) {
    int opt;
    int option_index = 0;
    if (argc < 4) {
        print_help();
        return 1;
    }

    string search_type = "";
    char *depth;

    bool is_initial_input_option = false;
    bool is_logging_option = false;
    bool is_reversed = false;
	bool is_random_init = false ;

    string log_file_name = "";

    // Initialize the random number generator.
    struct timeval tv;
    gettimeofday(&tv, NULL);
    srand((tv.tv_sec * 1000000) + tv.tv_usec);

    while((opt = getopt_long_only(argc, argv,"l:i", long_options, &option_index)) != EOF) {
        switch(opt) {
            case 0:
                if (search_type != "") {
                    print_help();
                    return 1;
                }
                search_type = long_options[option_index].name;
                break;
            case 'i':
                is_initial_input_option = true;
                break;
            case 'l':
                is_logging_option = true;
                if (optarg) {
                    log_file_name = optarg;
                } else {
                    fprintf(stderr, "Enter log file name\n");
                    return 1;
                }
                break;
            case 'p':
            case 'd':
              is_reversed = (opt=='d');
              // see https://stackoverflow.com/questions/1052746/getopt-does-not-parse-optional-arguments-to-parameters
              search_type = "dfs";
              if (!optarg
                  && optind < argc
                  && NULL != argv[optind]
                  && '\0' != argv[optind][0]
                  && '-' != argv[optind][0]) {
                  depth = argv[optind++];
              } else {
                depth = 0;
              }
              break;
			
			case 'r':
				is_random_init = true ;
				break ;

            default:
                print_help();
                return 1;
        }
    }

    if (search_type == "" || optind + 1 >= argc) {
        print_help();
        return 1;
    }

    // Set environment variable to on/off initial input option
    const char *input_option_val = is_initial_input_option ? "true" : "false";
    setenv("CREST_INITIAL_INPUT", input_option_val, 1);
	if (is_random_init)
		setenv("CREST_RANDOM_INIT", "true", 1) ;
    string prog = argv[optind++];
    int num_iters = atoi(argv[optind++]);

    crest::Search* strategy;
    if (search_type == "random") {
        strategy = new crest::RandomSearch(prog, num_iters);
    } else if (search_type == "random_input") {
        strategy = new crest::RandomInputSearch(prog, num_iters);
    } else if (search_type == "dfs") {
        if (depth) {
            strategy = new crest::BoundedDepthFirstSearch(prog, num_iters, atoi(depth), is_reversed);
        } else {
            strategy = new crest::BoundedDepthFirstSearch(prog, num_iters, 1000000, is_reversed);
        }
    } else if (search_type == "cfg") {
        strategy = new crest::CfgHeuristicSearch(prog, num_iters);
    } else if (search_type == "cfg_baseline") {
        strategy = new crest::CfgBaselineSearch(prog, num_iters);
    } else if (search_type == "hybrid") {
        strategy = new crest::HybridSearch(prog, num_iters, 100);
    } else if (search_type == "uniform_random") {
        if (!optarg) {
            strategy = new crest::UniformRandomSearch(prog, num_iters, 100000000);
        } else {
            strategy = new crest::UniformRandomSearch(prog, num_iters, atoi(depth));
        }
    } else {
        fprintf(stderr, "Unknown search strategy: %s\n", search_type.c_str());
        return 1;
    }
  if(is_logging_option) {
    strategy->SetIsLoggingOption(is_logging_option);
    strategy->SetLogFileName(log_file_name);
    // To make sure crest do not append to the existing file,
    // remove the file first
    std::remove(log_file_name.c_str());
  }
  strategy->Run();

  delete strategy;
  return 0;
}
