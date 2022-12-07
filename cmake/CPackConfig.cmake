set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Exercise to try to package the code from the CMake exercise with CPack"
	CACHE STRING "CPack")

set(CPACK_PACKAGE_VENDOR "Anja Bergdolt")
set(CPACK_PACKAGE_CONTACT "st185718@stud.uni-stuttgart.de")
set(CPACK_PACKAGE_MAINTAINERS "Anja Bergdolt ${CPACK_PACKAGE_CONTACT}")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/bergdola/cpack-exercise-wt2223")
set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)
set(CPACK_STRIP_FILES TRUE)

include(CPack)
