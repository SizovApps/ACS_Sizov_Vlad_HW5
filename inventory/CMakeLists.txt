cmake_minimum_required(VERSION 3.20)
project(inventory)

set(CMAKE_CXX_STANDARD 17)

add_executable(inventory main.cpp Inventory.cpp Inventory.h Box.cpp Box.h)
