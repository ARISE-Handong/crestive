CREST-IVE: CREST Improved
=====

CREST-IVE is a variant of CREST a concolic test generation tool for C programs,
maintained by the ARISE lab in Handong University http://arise.handong.edu.
CREST-IVE is an extension of CREST originally developed by Jacob Burnim (https://burn.im/crest). 
CREST-IVE enriches user interfaces to make engineers easy to apply concolic test generation
in their C program testing. Currently, CREST-IVE extends CREST to the following points:
  * CRETS-IVE uses Z3 for constraint solving (replacing the Yices 1 solver)
  * CREST-IVE can define an initial value of a symbolic variable  
  * CREST-IVE can show the internal information of symbolic execution for testers to better understand the symbolic execution progress.

Build CREST-IVE
=====
CREST-IVE can work with Ubuntu 14.04,Ubuntu 16.04 and Mac OS, currently.
Please find the following instruction to download a constraint solver Z3, to build CIL,
and to build CREST-IVE in sequence.

Build CREST-IVE with Ubuntu 14.04 and Ubuntu 16.04
=====

1. Clone this repository to your local
```	
git clone http://github.com/arise-handong/crestive 
```

2. Download [Z3](https://github.com/Z3Prover/z3) version 4.8.4 (or a more recent version) to the 'lib' directory. For example of Ubuntu 16.04:
``` 
cd crestive/lib
wget https://github.com/Z3Prover/z3/releases/download/z3-4.8.4/z3-4.8.4.d6df51951f4c-x64-ubuntu-16.04.zip
unzip z3-4.8.4.d6df51951f4c-x64-ubuntu-16.04.zip
ln -s z3-4.8.4.d6df51951f4c-x64-ubuntu-16.04 z3
```

3. Update LD_LIBRARY_PATH of `libz3.so`
```
cd crestive/lib/z3/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
```

4. Build ```cil```, a variant of [CIL](https://cil-project.github.io/cil/) for CREST

``` 
cd crestive/cil
./configure
make 
```

5. Build CREST-IVE and update PATH

``` 
cd crestive/src
make
cd ../bin
PATH=$PATH:$(pwd) 
```

Build CREST-IVE with Mac OS
=====
0. Constraint
```
CREST-IVE can only be built with 

- any version of GCC(Not clang) on Mac OS
- Ocaml version >= 4.02.3 and Ocaml version < 4.06 (for running with cil)
 
```

1. Clone this repository to your local
```	
git clone http://github.com/arise-handong/crestive
```

2. Download [Z3](https://github.com/Z3Prover/z3) version 4.8.4 (or a more recent version) to the 'lib' directory. For example of Mac OS:
``` 
cd crest/lib
wget https://github.com/Z3Prover/z3/releases/download/z3-4.8.4/z3-4.8.4.d6df51951f4c-x64-osx-10.14.1.zip  
unzip z3-4.8.4.d6df51951f4c-x64-osx-10.14.1.zip
ln -s z3-4.8.4.d6df51951f4c-x64-osx-10.14.1 z3
```

3. Update LD_LIBRARY_PATH of `libz3.dylib`
```
cd crestive/lib/z3/bin
install_name_tool -change libz3.dylib /crestive/lib/z3/bin/libz3.dylib process_cfg
install_name_tool -change libz3.dylib /crestive/lib/z3/bin/libz3.dylib run_crest
```

4. Build ```cil```, a variant of [CIL](https://cil-project.github.io/cil/) for CREST

``` 
cd crestive/cil
./configure
make 
```

5. Build CREST-IVE and update PATH

``` 
cd crestive/src
make
cd ../bin
PATH=$PATH:$(pwd) 
```
Run CRESTIVE
=====
A target program must declare one or more variables as symbolic variables.
CREST-IVE extracts a symbolic path condition over these symbolic varialbes 
along a concret execution, and then generates a test input as a concrete value 
assignments to these symbolic variables. To declare a variable ```x``` as 
a symoblic variable, a target program must include ```<crest.h>``` and invoke
```CREST_int(x)``` (or ```CREST_char(x)```) at the moment when x is defined by
input.

Once symbolic variables are declared, a target program must be built by
```bin/crestc```. For instance, if ```target/prog.c``` is a target program,
execute the following command:

```
crestc prog.c
```

```crestc``` is a script to produce an executable of a target program while inserting 
additional code (i.e., instrumentation) for running dynamic symbolic analyses along 
a program execution in background. For code insertion, ```crestc``` first invokes CIL 
to run a source-code transformation scheme as programmed in ```lib/cil```.
The source-code transformation inserts CREST API calls at every target program statement 
depending on thier kinds in order to emit which operation is executed with which operands 
(i.e., variables or memory locations) in a target program execution. 
After source-code transformation, ```crestc``` invokes a C compiler (e.g., gcc) to build 
the transformed target program to get an executable. 
Note that ```crestc``` does not produce the executable only, but also a suite of data files 
(as side-products) needed for CREST-IVE to conduct symbolic analyses.


```bin/run_crest``` runs concolic test generation on an instrumented executable program.
The command line options of ```bin/run_crest``` are as follows:  

``` run_crest <PROGRAM> <NUM_ITERATIONS> <STRATEGY> [STRATEGY OPTION] [-random_init] ```

```<PROGRAM>``` is a pathname of a target program executable compiled by ```crestc```.
```<NUM_ITER>``` gives the maximum number of concolic executions, which is the same as
the maximum number of test inputs to generate.
```<STRATEGY>``` defines which search strategy will be used for concolic test generation.
Currently, CREST-IVE supports six search strategies: ```dfs``` for DFS, ```rdfs``` for 
Reverse DFS, ```random``` for Random Negation, ```uniform_random``` for Uniform Random,
and ```cfg``` for Control-flow Graph-based heuristics. Depending on ```<STRATEGY>```,
we may give an argument ```[STRATEGY OPTION]``` optionally. Finally, it is possible to
configure CREST-IVE to set the initial value of a symbolic variable at first execution
as a random number by giving the ```-random_init``` option.

For example of ```target/prog.c```, the following command will start CREST-IVE to generate
test input with the DFS search strategy up to 1000 times.

```
run_crest ./prog 1000 -dfs
```

The test execution results will be printed out to standard output. In addition, *i*-th
test execution creates ```stdout.i``` and ```stderr.i``` which capture standard output
and standard error produced by running the target program with i-th test input.

License
=====

CREST-IVE inherits the license of CREST. CREST is distributed under the revised BSD license.  See LICENSE for details.

This distribution includes a modified version of CIL, a tool for
parsing, analyzing, and transforming C programs.  CIL is written by
George Necula, Scott McPeak, Wes Weimer, Ben Liblit, and Matt Harren.
It is also distributed under the revised BSD license.  See cil/LICENSE
for details.

