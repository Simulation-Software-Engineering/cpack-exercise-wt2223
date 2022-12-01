set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE cpack example project"
  CACHE STRING "Extended summary.")

set(CPACK_PACKAGE_VENDOR "Matthias Weilinger")
set(CPACK_PACKAGE_CONTACT "st156232@stud.uni-stuttgart.de")
set(CPACK_PACKAGE_MAINTAINERS "Matthias Weilinger")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/ProbstenHias/cpack-exercise-wt2223")
set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)
set(CPACK_STRIP_FILES TRUE)

include(CPack)