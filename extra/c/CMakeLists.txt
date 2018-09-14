cmake_minimum_required(VERSION 3.11)

project(test)

add_subdirectory(lib)
include_directories(lib/include)
link_directories(lib)

add_executable(a.out main.c)
target_link_libraries(a.out extrac)
