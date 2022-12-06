set(CPACK_PACKAGE_NAME ${PROJECT_NAME})
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "mananijh - cpack exercise solution - sse")
set(CPACK_PACKAGE_VENDOR "mananijh CPack Solution")
set(CPACK_PACKAGE_MAINTAINERS "Jayesh Manani")
set(CPACK_PACKAGE_CONTACT "jsmanani@gmail.com")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/jayeshmanani/cpack-exercise-wt2223")

set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_STRIP_FILES TRUE) # for stripping the files set it TRUE, otherwise just comment the line
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

include(CPack)