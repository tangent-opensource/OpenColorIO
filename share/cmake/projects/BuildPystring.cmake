project(pystring)

cmake_minimum_required(VERSION 3.10)

set(HEADERS
	pystring.h
)

set(SOURCES
	pystring.cpp
)

add_library(${PROJECT_NAME} STATIC ${HEADERS} ${SOURCES})

set_target_properties(${PROJECT_NAME} PROPERTIES 
    COMPILE_FLAGS "${PLATFORM_COMPILE_FLAGS}"
    PUBLIC_HEADER "${HEADERS}"
)

install(TARGETS ${PROJECT_NAME}
	RUNTIME DESTINATION bin
	LIBRARY DESTINATION lib
	ARCHIVE DESTINATION lib
	PUBLIC_HEADER DESTINATION include/pystring
)