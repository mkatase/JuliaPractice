cmake_minimum_required(VERSION 3.11)

project(test Fortran)

enable_language(Fortran)

#set(CMAKE_Fortran_MODULE_DIRECTORY mod)
#include_directories(lib)
add_subdirectory(lib)

include_directories(${CMAKE_BINARY_DIR}/lib/${CMAKE_Fortran_MODULE_DIRECTORY})
link_directories(lib)

add_executable(a.out main.f90)
target_link_libraries(a.out extraf)
