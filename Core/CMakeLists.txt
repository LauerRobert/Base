cmake_minimum_required(VERSION 3.22)

project(Core)

# Add the executable
add_library(Core Core.cpp)
add_library(Core::Core ALIAS Core)

# target_sources(Core PRIVATE Core.cpp)