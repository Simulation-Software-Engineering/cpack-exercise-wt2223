set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "CPack Exercise Winter Semester 2022-2023"
        CACHE STRING "CPack Exercise to package code into TGZ and DEB files. Winter Semester 2022-2023")

set(CPACK_PACKAGE_VENDOR "Mustafa Cevik")
set(CPACK_PACKAGE_CONTACT "mustafacevik963@gmail.com")
set(CPACK_PACKAGE_MAINTAINERS "SSE lectured student ${CPACK_PACKAGE_CONTACT}")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/musteng/cpack-exercise-wt2223.git")
set(CPACK_GENERATOR "TGZ;DEB") # Packages to be generated

# Debian packaging section
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)
set(CPACK_STRIP_FILES TRUE)
# Debian packaging section end

include(CPack)
