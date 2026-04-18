cmake_minimum_required(VERSION 3.22.1)
project("turbo_nativeloader")

add_library(turbo_nativeloader SHARED
        turbo_jni.cpp
        mount_ns.cpp
        mountinfo_parser.cpp
        map_parser.cpp
)

target_include_directories(turbo_nativeloader PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(turbo_nativeloader
        log
        dl
)

set_target_properties(turbo_nativeloader PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED ON
)
