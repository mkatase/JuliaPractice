#!/usr/bin/env julia

using Printf

push!(Base.DL_LOAD_PATH, "./lib/libf/")

println("# Fortran Test...")

println("* display subroutine")
ccall((:display_, "libextraf"), Nothing, ())

println("* calc in module[eins]")
# ng pattern
#a = 5
#b = 2
#@printf("A=%d B=%d\n",a,b)
# ok pattern
a = Int32[5]
b = Int32[2]
#a = [5]
#b = [2]
c = 0
@printf("A=%d B=%d\n",a[1],b[1])
c = ccall((:__eins_MOD_calc, "libextraf"), Int32,
      (Ptr{Int32}, Ptr{Int32},), a, b)
println(c)

println("* foo in module[zwei]") 
a = Int32[6]
b = Int32[9]
@printf("A=%d B=%d\n",a[1],b[1])
ccall((:__zwei_MOD_foo, "libextraf"), Nothing,
      (Ptr{Int32}, Ptr{Int32},), a, b)
println(b[1])

println("* moo in module[zwei]")
a = Int32[5,7]
b = Int32[8,9]
println(a)
println(b)
ccall((:__zwei_MOD_moo, "libextraf"), Nothing,
      (Ptr{Int32}, Ptr{Int32},), a, b)
println(b)
