set(CPACK_PACKAGE_NAME ${PROJECT_NAME})
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE cpack exercise solution- bhawsina")
set(CPACK_PACKAGE_VENDOR "bhawsina CPack Solution")
set(CPACK_PACKAGE_MAINTAINERS "Nistha Bhawsinka")
set(CPACK_PACKAGE_CONTACT "nistha.bhawsinka@gmail.com")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/CodyGirl/cpack-exercise-wt2223")

set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_STRIP_FILES TRUE)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

include(CPack)