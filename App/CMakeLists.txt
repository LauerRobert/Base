cmake_minimum_required(VERSION 3.22)

project(App)

# Add the executable
add_executable(App)
add_executable(App::App ALIAS App)

target_sources(App PRIVATE App.cpp)


# Link the executable with the Core library
target_link_libraries(App PUBLIC Core)
target_include_directories(App PUBLIC "${PROJECT_SOURCE_DIR}/Core")