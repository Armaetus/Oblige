##########################################
# steve
##########################################

project(steve)

file(GLOB_RECURSE SOURCES src/*.cpp src/*.h)

add_library(steve ${SOURCES})

target_include_directories(steve PUBLIC src)