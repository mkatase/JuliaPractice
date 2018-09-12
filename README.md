# My practice code for Julia
## Environment
* Fedora 28 4.17.19-200
* Julia 0.6.3

## Code Abstract
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

## How to use
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
