#!/usr/bin/env julia
#

ccall((:display, "libextrac"), Void, ())

println("-----")
u = ccall((:calc, "libextrac"), Int32, (Int32,), 4)
println(u)

println("-----")
v = ccall((:hello, "libextrac"), Cstring, (Cstring,), "Aonther")
println(unsafe_string(v))
