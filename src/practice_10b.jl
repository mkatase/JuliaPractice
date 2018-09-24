#!/usr/bin/env julia
#

push!(Base.DL_LOAD_PATH, "./lib/libc")

ccall((:display, "libextrac"), Nothing, ())

println("-----")
u = ccall((:calc, "libextrac"), Int32, (Int32,), 4)
println(u)

println("-----")
v = ccall((:hello, "libextrac"), Cstring, (Cstring,), "Another")
println(unsafe_string(v))

println("-----")
z = ccall((:hello, "libextrac"), Ptr{UInt8}, (Cstring,), "Bnother")
println(unsafe_string(z))
