#!/usr/bin/env julia

"""
 WebKit Example Code using PySide

"""

using PyCall

include("../lib/libj/TestFive.jl")

tf = TestFive()

fp     = open("./data/demo.html", "r")
tf[:m] = read(fp, String)

tf[:start]()
