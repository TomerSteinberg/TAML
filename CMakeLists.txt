cmake_minimum_required(VERSION 3.10)
project(TAML)

include_directories(include)

add_library(TAML src/tensor.cc src/graph.cc src/symbolic_tensor.cc src/operation.cc)

add_subdirectory(src)
add_subdirectory(include)
add_subdirectory(tests)
add_subdirectory(examples)

