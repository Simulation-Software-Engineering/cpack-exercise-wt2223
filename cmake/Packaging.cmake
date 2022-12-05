# Debian packaging
set(CPACK_GENERATOR "TGZ;DEB")
set(CPACK_DEBIAN_FILE_NAME "cpackexample_0.1.0_amd64.deb")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS YES)
include(CPack)
