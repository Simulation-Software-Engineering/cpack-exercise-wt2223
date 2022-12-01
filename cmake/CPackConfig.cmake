set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE sumanth0703 cpack project"
  CACHE STRING "Extended summary.")

set(CPACK_PACKAGE_VENDOR "Sai Sumanth Moturu")
set(CPACK_PACKAGE_CONTACT "sumanthmoturu0703@gmail.com")
set(CPACK_PACKAGE_MAINTAINERS "Sai Sumanth Moturu ${CPACK_PACKAGE_CONTACT}")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/sumanth0703/cpack-exercise-wt2223.git")

set(CPACK_GENERATOR "TGZ;DEB")

# Debian packaging section
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

# strip really all Debug symbols
set(CPACK_STRIP_FILES TRUE)

include(CPack)
