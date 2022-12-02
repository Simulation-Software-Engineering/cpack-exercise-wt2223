set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE cpack exercise"
  )
set(CPACK_PACKAGE_DESCRIPTION "SSE cpack exercise long description")


set(CPACK_PACKAGE_VENDOR "Torben Schiz")
set(CPACK_PACKAGE_CONTACT "st161671@stud.uni-stuttgart.de")
set(CPACK_PACKAGE_MAINTAINERS "SSE lecturers and attendends ${CPACK_PACKAGE_CONTACT}")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/tjwsch/cpack-exercise-wt2223")


set(CPACK_STRIP_FILES TRUE)

set(CPACK_GENERATOR "TGZ;DEB")

include(CPack)