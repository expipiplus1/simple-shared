cmake_minimum_required(VERSION 2.8.12)

project(simple-shared)

add_library(add SHARED add.c)

install(TARGETS add DESTINATION ".")
install(FILES add.h DESTINATION ".")
