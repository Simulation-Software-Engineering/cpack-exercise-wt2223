set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "CPack example project by Till Prölß")

set(CPACK_PACKAGE_VENDOR "SSE Lecture Participants")
set(CPACK_PACKAGE_CONTACT "st148545@stud.uni-stuttgart.de")
set(CPACK_PACKAGE_MAINTAINERS "Till Prölß")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/Till223/cpack-exercise-wt2223")

# Debian packaging section
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

set(CPACK_STRIP_FILES YES)

include(CPack)
