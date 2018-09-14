# My practice code for Julia 0.6.3/0.7.0/1.0.0

## Environment

* Fedora 28 4.17.19-200
* Julia 0.6.3/0.7.0/1.0.0
* cmake 3.11.2
* gcc 8.1.1

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

## Code Abstract for Julia 0.7.0/1.0.0
* practice_01b.jl : same as practice_01.jl
* practice_02b.jl : same as practice_02.jl
* practice_03b.jl : same as practice_03.jl
* practice_04b.jl : same as practice_04.jl
* practice_05b.jl : same as practice_05.jl
* practice_06b.jl : same as practice_06.jl
* practice_07b.jl : same as practice_07.jl
* practice_10b.jl : same as practice_10.jl

## Three functions for Python/C

- display function: output string (void return)
- calc function: Square calculation (integer return)
- hello function: output string to add any string (string return)

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

## How to use C shared library
```
$ export LD_LIBRARY_PATH=./lib/libc/:$LD_LIBRARY_PATH
```

## 
## How to use for Julia 0.6.3
```
$ ./hello.jl
$ ./practice_00.jl ./data/elements.csv
$ ./practice_01.jl ./data/elements.csv
$ ./practice_02.jl ./data/elements_with_header.csv
$ ./practice_03.jl ./data/elements_with_header.csv
$ ./practice_04.jl
$ ./practice_05.jl ./data/elements.csv test.db
$ ./practice_06.jl
$ ./practice_07.jl
$ ./practice_08.jl
$ ./practice_09.jl
```
