set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_MAINTAINERS "lingemkm")
set(CPACK_PACKAGE_CONTACT "Kim Lingemann <st160814@stud.uni-stuttgart.de>")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE - Exercise 03, CPack"
    CACHE STRING "Extended summary.")
set(CPACK_PACKAGE_VENDOR "lingemkm")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/kimsina/cpack-exercise-wt2223")

set(CPACK_GENERATOR "TGZ;DEB")

# Debian packaging section
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

set(CPACK_STRIP_FILES TRUE)
set(CPACK_PACKAGE_DESCRIPTION "This is the third exercise of Simulation Software Engineering. It covers CPack.")

include(CPack)