#!/usr/bin/env julia
#
using PyCall
include("lib/libj/Testfour.jl")

u = Testfour()

u[:printout]()

o = u[:calc]()
println(o)

u[:x] = 7
p = u[:calc]()
println(p)

q = u[:hello]("Four Class")
println(q)
