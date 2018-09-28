#!/usr/bin/env julia
#
using PyCall

pushfirst!(PyVector(pyimport("sys")["path"]), "")
t = pyimport("lib.libp.testone")

println(t[:hello]())

o = t[:calc](3)
println(o)
