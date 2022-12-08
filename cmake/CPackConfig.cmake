set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_VENDOR "parajuba")
set(CPACK_PACKAGE_CONTACT "bishwashparajuli10@gmail.com")
set(CPACK_PACKAGE_MAINTAINERS "parajuba")
set(CPACK_PACKAGE_DESCRIPTION "Package with solution for CPack - Simulation Software Engineering.")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE CPack exercise")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/bishwash369/cpack-exercise-wt2223")

set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)
set(CPACK_STRIP_FILES FALSE)
set(CPACK_GENERATOR "TGZ;DEB")

include(CPack)