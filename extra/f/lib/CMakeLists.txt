cmake_minimum_required(VERSION 3.11)

project(testmod Fortran)

set(SRC src/sub/display.f90 src/mod/eins.f90 src/mod/zwei.f90)

add_library(extraf SHARED ${SRC})
