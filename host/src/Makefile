#Z3_DIR=/usr
Z3_DIR=~/z3-lib
Z3_LIB=$(Z3_DIR)/bin
Z3_INCLUDE=$(Z3_DIR)/include
#SERVER_INCLUDE=run_crest/z3/bin
OS := $(shell uname)

CC=$(CXX)

#If your Operating System is Mac(Darwin)
ifeq ($(OS),Darwin)
CFLAGS = -I. -I$(Z3_INCLUDE) -fpermissive -Wall -O2 -std=c++11 -Wno-narrowing
#If Operating System is Linux
else
CFLAGS = -I. -I$(Z3_INCLUDE) -Wall -O2 -std=c++11 -Wno-narrowing
endif

CXXFLAGS = $(CFLAGS)
LDFLAGS = -L$(Z3_LIB)
LOADLIBES = -lz3

BASE_LIBS = base/basic_types.o base/symbolic_execution.o \
            base/symbolic_interpreter.o base/symbolic_path.o \
            base/symbolic_predicate.o base/symbolic_expression.o \
            base/z3_solver.o \
						run_crest/server.o


all: libcrest/libcrest.a run_crest/run_crest \
     process_cfg/process_cfg tools/print_execution \
     install

libcrest/libcrest.a: libcrest/crest.o $(BASE_LIBS)
	$(AR) rsv $@ $^

run_crest/run_crest: run_crest/concolic_search.o $(BASE_LIBS)

tools/print_execution: $(BASE_LIBS)

install:
	cp libcrest/libcrest.a ../lib
	cp run_crest/run_crest ../bin
	cp process_cfg/process_cfg ../bin
	cp tools/print_execution ../bin
	cp libcrest/crest.h ../include

clean:
	rm -f libcrest/libcrest.a run_crest/run_crest
	rm -f process_cfg/process_cfg tools/print_execution
	rm -f */*.o */*~ *~
