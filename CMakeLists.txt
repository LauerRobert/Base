cmake_minimum_required(VERSION 3.22)

project(Base)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the Core subdirectory
add_subdirectory(App)
add_subdirectory(Core)
