set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_PACKAGE_VERSION "0.1.0")
set(CPACK_PACKAGE_CONTACT "Marcel Marquardt <marcel@mardom.dev>")
set(CPACK_PACKAGE_VENDOR "SSE Lecturers & Marcel Marquardt")
set(CPACK_PACKAGE_DESCRIPTION "Solves poisson problem with FEM using deal.II, modifies a flat set using boost container, inspects the current directory using boost filesystem and parses a yaml file with yaml-cpp.")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE CPack exercise")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/mardom1/cpack-exercise-wt2223")
set(CPACK_PACKAGE_EXECUTABLES "cpackexample")

set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)

set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_STRIP_FILES TRUE)

include(CPack)
