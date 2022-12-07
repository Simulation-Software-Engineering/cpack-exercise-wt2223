set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Demo package for SSE exercises"
  CACHE STRING "This package is built as part of the Lecture SSE. In the exercises, we need to create fitting CPack configuration files and build and package the project ourselves")

set(CPACK_PACKAGE_VENDOR "SSE Lecturers")
set(CPACK_PACKAGE_CONTACT "st163413@stud.uni-stuttgart.de")
set(CPACK_PACKAGE_MAINTAINERS "Maximilian Kuhn")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/KuhnMn/cpack-exercise-wt2223")

set(CPACK_STRIP_FILES TRUE)

set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

include(CPack)