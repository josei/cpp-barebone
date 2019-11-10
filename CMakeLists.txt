cmake_minimum_required(VERSION 3.15)

project(Project VERSION 1.0 LANGUAGES CXX)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include_directories(${CMAKE_SOURCE_DIR}/app/include)

file(GLOB_RECURSE APP_SOURCES app/src/*/*.cpp)
add_executable(app app/src/main.cpp "${APP_SOURCES}")
target_link_libraries(app ${CONAN_LIBS})

include_directories(${CMAKE_SOURCE_DIR}/test/include)

file(GLOB_RECURSE TEST_SOURCES test/src/*.cpp)
add_executable(test "${TEST_SOURCES}" "${APP_SOURCES}")
target_link_libraries(app ${CONAN_LIBS})

