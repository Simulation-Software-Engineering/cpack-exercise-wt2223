set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "This is an exersice for cpack")

set(CPACK_PACKAGE_VENDOR "Yasser Sulaiman")

set(CPACK_PACKAGE_CONTACT "yassersulaiman.is@gmail.com")

set(CPACK_PACKAGE_MAINTAINERS "Yasser Sulaiman")

set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/yasser-sulaiman/cpack-exercise-wt2223")

set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)

set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

set(CPACK_GENERATOR "TGZ;DEB")

set(CPACK_STRIP_FILES TRUE)

include(CPack)