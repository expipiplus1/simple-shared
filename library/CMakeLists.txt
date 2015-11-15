cmake_minimum_required(VERSION 2.8.12)

project(simple-shared C)

add_library(add SHARED add.c)

install(TARGETS add
        RUNTIME DESTINATION "." COMPONENT Runtime
		LIBRARY DESTINATION "." COMPONENT Runtime)
install(FILES add.h DESTINATION ".")
