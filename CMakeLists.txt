cmake_minimum_required(VERSION 3.20)
project(hello_fmt)

find_package(fmt REQUIRED)

add_executable(hello_fmt main.cpp)
target_link_libraries(hello_fmt PRIVATE fmt::fmt)

install(TARGETS hello_fmt
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)
