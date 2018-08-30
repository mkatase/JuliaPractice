#!/usr/bin/env julia
#

function readfile(filename)
    L = []
    open(filename, "r" ) do fi
        for line in eachline( fi )
            line = rstrip(line)
            if line[1] != '#'
                cols = split(line, ',')
                push!(L, cols)
            end
        end
    end
    L
end

function printout(L)
    for n in L
        println(n[1], " ", n[6])
    end
end

if length(ARGS) != 0
    L = readfile(ARGS[1])
    printout(L)
else
    exit()
end
