#!/usr/bin/env julia
#
using PyCall

@pydef mutable struct Testthree
    function __init__(self)
        self[:x] = 5
    end

    function printout(self)
        println("TestThree Class...")
    end

    calc(self) = self[:x] * self[:x]

    hello(self, str::String) = "Hello $str World !!"

end


u = Testthree()

u[:printout]()

o = u[:calc]()
println(o)

u[:x] = 8
p = u[:calc]()
println(p)

q = u[:hello]("Three Class")
println(q)
