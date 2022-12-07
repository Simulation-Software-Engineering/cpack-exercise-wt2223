set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")

set(CPACK_PACKAGE_VENDOR "Dark Side")
set(CPACK_PACKAGE_CONTACT "darth_veidim@deathstar.com")
set(CPACK_PACKAGE_MAINTAINERS "Commander Tarkin ${CPACK_PACKAGE_CONTACT}")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "DarthPack from Dark Side"
CACHE STRING "In this version Anakin has joined the Dark Side.")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/Darth-Veidim/cpack-exercise-wt2223")
set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)
set(CPACK_STRIP_FILES TRUE)
include(CPack)

