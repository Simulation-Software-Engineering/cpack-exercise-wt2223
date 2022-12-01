cmake_minimum_required(VERSION "3.12")

FIND_PACKAGE(deal.II 9.1.0 REQUIRED
  HINTS ${DEAL_II_DIR} ../ ../../ $ENV{DEAL_II_DIR}
  )
DEAL_II_INITIALIZE_CACHED_VARIABLES()

project("cpackexample" VERSION 0.1.0)

find_package(Boost
  1.65.1
  REQUIRED
  filesystem
  )

find_package(yaml-cpp
  0.6.0
  REQUIRED
  )




file(GLOB SOURCES  "**/*.cpp")
add_library(cpackexamplelib ${SOURCES})

add_executable("${PROJECT_NAME}" main.cpp)
target_link_libraries("${PROJECT_NAME}" cpackexamplelib)
target_link_libraries(cpackexamplelib Boost::filesystem ${YAML_CPP_LIBRARIES})

DEAL_II_SETUP_TARGET("${PROJECT_NAME}")
DEAL_II_SETUP_TARGET(cpackexamplelib)


file(GLOB HEADER_FILES  "**/*.h" "**/*.hpp")
set_target_properties(cpackexamplelib PROPERTIES PUBLIC_HEADER "fem/fem.hpp;filesystem/filesystem.hpp;flatset/flatset.hpp;yamlParser/yamlParser.hpp")

target_include_directories(cpackexamplelib
    PRIVATE
        # where the library itself will look for its internal headers
        ${CMAKE_CURRENT_SOURCE_DIR}/includedir
    PUBLIC
        # where top-level project will look for the library's public headers
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/includedir>
        # where external projects will look for the library's public headers
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/includedir>
)


install(TARGETS "${PROJECT_NAME}" cpackexamplelib
  RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin/
  LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/
  ARCHIVE DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/
  PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_PREFIX}/include/cpackexamplelib/
  )