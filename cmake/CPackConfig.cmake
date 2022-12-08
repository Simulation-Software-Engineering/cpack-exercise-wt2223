set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "CPack exercise"
   CACHE STRING "Extended summary.")

set(CPACK_PACKAGE_VENDOR "Simulation Engineering")
set(CPACK_PACKAGE_CONTACT "mark.ashraf.fcis@hotmail.com")
set(CPACK_PACKAGE_MAINTAINERS "Mark Youssef")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/MarkAshraf96/cpack-exercise-wt2223.git")
set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_STRIP_FILES TRUE)
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

include(CPack)


