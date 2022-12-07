set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_VENDOR "lacerdar")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE CPack example"
	CACHE STRING "Exemplary packaging of a C++ code using CPack as part of the SSE course at the University of Stuttgart")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/iatzak/cpack-exercise-wt2223")
set(CPACK_PACKAGE_MAINTAINER "lacerdar")
set(CPACK_PACKAGE_CONTACT "st171197@stud.uni-stuttgart.de")

set(CPACK_GENERATOR "TGZ;DEB")

# Debian packaging section
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

set(CPACK_STRIP_FILES TRUE)

include(CPack)
