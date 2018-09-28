#!/usr/bin/env julia
#
using PyCall

pushfirst!(PyVector(pyimport("sys")["path"]), "")
t = pyimport("lib.libp.testtwo")

u = t[:Testtwo]()

u[:display]()

o = u[:calc]()
println(o)

u[:x] = 6
p = u[:calc]()
println(p)

q = u[:hello]("Two Class")
println(q)
