cmake_minimum_required(VERSION 3.27)

project(flex)

# remove "lib" prefix on unix systems
set(CMAKE_STATIC_LIBRARY_PREFIX "")

if (WIN32)
    set(OUTPUT_DIR "windows" CACHE STRING "")
elseif(APPLE)
    set(OUTPUT_DIR "macos" CACHE STRING "")
elseif(UNIX)
    set(OUTPUT_DIR "linux" CACHE STRING "")
endif ()

add_library(flex STATIC flex/flex.c)

set_target_properties(flex PROPERTIES OUTPUT_NAME_DEBUG "flexd")
set_target_properties(flex PROPERTIES OUTPUT_NAME_RELEASE "flex")
set_target_properties(flex PROPERTIES ARCHIVE_OUTPUT_DIRECTORY $<LOWER_CASE:../../libs/${OUTPUT_DIR}>) 