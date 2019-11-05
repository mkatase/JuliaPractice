#!/usr/bin/env julia

"""
 WebKit Example Code using PySide

"""

using PyCall

include("../lib/libj/TestFive_c.jl")

tf = TestFive()

function checkinput(s::String)
    if occursin("http://", s) || occursin("https://", s)
        tf.u = s
    elseif occursin(".htm", s)
        fp     = open(s, "r")
        tf.m = read(fp, String)
    else
        error("[E] input string error")
    end
end

#checkinput("./data/demo.html")
checkinput("https://julialang.org/")
#print(tf[:m])
#print(tf[:u])

tf.start()
