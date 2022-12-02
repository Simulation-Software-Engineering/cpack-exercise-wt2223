set(CPACK_PACKAGE_NAME ${PROJECT_NAME}
  CACHE STRING "The package name"
)

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "CPack Exercise Hofmanjn"
  CACHE STRING "Extended summary..."
)

set(CPACK_EXTENDED_DESCRIPTION "This is an exercise Package")

set(CPACK_PACKAGE_VENDOR "SSE Course")
set(CPACK_PACKAGE_CONTACT "jan.hofmann@ims.uni-stuttgart.de")
set(CPACK_PACKAGE_MAINTAINERS "Jan Hofmann<${CPACK_PACKAGE_CONTACT}>")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/bluzukk/cpack-exercise-wt2223")

SET(CPACK_SET_DESTDIR "on")
set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBDEPS ON)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)

set(CPACK_PACKAGE_VERSION "0.1.0")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libyaml-cpp-dev (>= 0.6.0)")

# Fighting lintian
set(CPACK_STRIP_FILES TRUE)
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Jan Hofmann<${CPACK_PACKAGE_CONTACT}>")
set(CPACK_SET_DESTDIR "/lib")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Working with CPack is great!"
  CACHE STRING ":)")
set(CMAKE_WARN_DEPRECATED OFF CACHE BOOL "" FORCE)

# Not working
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/LICENSE")
set(CPACK_RESOURCE_FILE_README "${CMAKE_SOURCE_DIR}/README.md")

include(CPack)
