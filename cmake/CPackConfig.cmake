set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE CPack exercise example application.Doing different things: Solves a Poisson problem, modify a flat set, inspect filesystem, parse yaml")


set(CPACK_PACKAGE_VENDOR "SSE Lextures and Nils Imhoff")
set(CPACK_PACKAGE_CONTACT "nils@d4d1.dev")
set(CPACK_PACKAGE_MAINTAINERS "SSE lecturers ${CPACK_PACKAGE_CONTACT}")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/nils-imhoff/cpack-exercise-wt2223")

set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)
set(CPACK_STRIP_FILES TRUE)

include(CPack)
