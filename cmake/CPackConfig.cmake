set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_VENDOR "SSE course")
set(CPACK_PACKAGE_DESCRIPTION "Learning example of packaging C++ code.")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/chrispfae/cpack-exercise-wt2223")
set(CPACK_PACKAGE_CONTACT "christian.someemail.de")

# Generate .tar.gz and .deb file
set(CPACK_GENERATOR "TGZ;DEB")
# Strip the .deb file
set(CPACK_STRIP_FILES TRUE)

set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

include(CPack)
