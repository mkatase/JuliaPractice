#!/usr/bin/env julia
#
using DelimitedFiles
using Printf

include("./lib/libj/ElementB.jl")

function readfile(filename)
    (L,H) = readdlm(filename, ','; header=true, comments=true, comment_char='#')
    (rnum, cnum) = size(L)
    @printf("(row,col)=(%d,%d)\n",rnum,cnum)
    println(H)
    println()
    M = []
    for i = 1:rnum
        m = L[i,:]
        println(m)
        c = Element(m[1], m[2], m[3], m[4], m[5], m[6])
        push!(M, c)
    end
    M
end

function display(M)
    for c in M
        println(c.name, " ", c.cas)
    end
end

if length(ARGS) != 0
    M = readfile(ARGS[1])
    display(M)
else
    exit()
end
