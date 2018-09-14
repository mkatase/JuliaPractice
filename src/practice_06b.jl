#!/usr/bin/env julia
#
using PyCall

pushfirst!(PyVector(pyimport("sys")["path"]), "")
@pyimport lib.libp.testone as t

println(t.hello())

o = t.calc(3)
println(o)
