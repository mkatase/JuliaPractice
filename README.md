# My practice code for Julia 0.6.3/0.7.0/1.0.0/1.1-DEV

## Environment

* Fedora 29 4.18.16-300
* Julia 0.6.3/1.0.1/1.1.0-DEV(copr)
* cmake 3.12.1
* gcc 8.2.1
* gfortran 8.2.1
* pyside 1.2.4

## Code Abstract for Julia 0.6.3
* hello.jl       : Hello World code
* practice_00.jl : Read data (without header) and display
* practice_01.jl : Read data (without header) using csvread and display 
* practice_02.jl : Read data (with header) using csvread and display
* practice_03.jl : Add system types
* practice_04.jl : Download image file for internet
* practice_05.jl : SQLite demo
* practice_06.jl : PyCall demo (loading module)
* practice_07.jl : PyCall demo (loading class)
* practice_08.jl : PyCall demo (loading inlined class)
* practice_09.jl : PyCall demo (separated 08)
* practice_10.jl : C Expansion demo

## Code Abstract for Julia 1.0.1/1.1.0-DEV
* practice_01b.jl : same as practice_01.jl
* practice_02b.jl : same as practice_02.jl
* practice_03b.jl : same as practice_03.jl
* practice_04b.jl : same as practice_04.jl
* practice_05b.jl : same as practice_05.jl
* practice_06b.jl : same as practice_06.jl
* practice_07b.jl : same as practice_07.jl
* practice_10b.jl : same as practice_10.jl
* practice_11b.jl : Fortran Expansion demo
* practice_12b.jl : Button Example using Gtk.jl
* practice_13b.jl : WebKit Example using PySide on Python

## Three functions for C

- display function: output string (void return)
- calc function: Square calculation (integer return)
- hello function: output string to add any string (string return)

## Three functions for Fortran
- display function: output string (void return)
- calc function: multiplication (subroutine based)
- foo function: 1-dimensional addition (module based)
- moo function: 2-dimensional addition (module based)

# Don't output __pycache__ directory

```
$ export PYTHONDONTWRITEBYTECODE=True
```

# How to build C shared library

```
$ cd extra/c
$ mkdir build
$ cd build
$ cmake ..
$ make
$ cp lib/libextrac.so ../../../lib/libc/ 
```

# How to build Fortran shared library
```
$ cd extra/f
$ mkdir build
$ cd build
$ cmake ..
$ make
$ cp lib/libextraf.so ../../../lib/libf/
```

## How to use C shared library
```
$ export LD_LIBRARY_PATH=./lib/libc/:$LD_LIBRARY_PATH
```

or

```
# for Julia 0.6.3
push!(Libdl.DL_LOAD_PATH, "./lib/libc/")
```

or

```
# for Julia 0.7.0/1.0.1/1.1-DEV
push!(Base.DL_LOAD_PATH, "./lib/libc")
```

## How to use for Julia 0.6.3
```
$ ./src/hello.jl
$ ./src/practice_00.jl ./data/elements.csv
$ ./src/practice_01.jl ./data/elements.csv
$ ./src/practice_02.jl ./data/elements_with_header.csv
$ ./src/practice_03.jl ./data/elements_with_header.csv
$ ./src/practice_04.jl
$ ./src/practice_05.jl ./data/elements.csv test.db
$ ./src/practice_06.jl
$ ./src/practice_07.jl
$ ./src/practice_08.jl
$ ./src/practice_09.jl
$ ./src/practice_10.jl
```
