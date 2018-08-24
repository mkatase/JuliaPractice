#!/usr/bin/env julia
#

function readfile(filename)
    (L,H) = readcsv(filename, header=true, comments=true, comment_char='#')
    (rnum, cnum) = size(L)
    @printf("(row,col)=(%d,%d)\n",rnum,cnum)
    println(H)
    println()
    for i = 1:rnum
        println(L[i,:])
    end 
end

if length(ARGS) != 0
    readfile(ARGS[1])
else
    exit()
end
