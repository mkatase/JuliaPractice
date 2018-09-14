cmake_minimum_required(VERSION 3.11)

set(SRC src/calc.c src/display.c src/hello.c)
include_directories(include)

add_library(extrac SHARED ${SRC})
