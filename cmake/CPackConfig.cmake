set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_VENDOR "tuyetltg")
set(CPACK_PACKAGE_CONTACT "Katrin Truong <st181505@stud.uni-stuttgart.de>")
set(CPACK_PACKAGE_MAINTAINERS "tuyetltg")
set(CPACK_PACKAGE_DESCRIPTION "This package contains a proposed solution for exersice 03 covering CPack of the lecture Simulation Software Engineering.")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE CPack exercise"
    CACHE STRING "Extended summary.")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/PommesFrittes/cpack-exercise-wt2223")

set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)
set(CPACK_STRIP_FILES TRUE)
set(CPACK_GENERATOR "TGZ;DEB")

include(CPack)
