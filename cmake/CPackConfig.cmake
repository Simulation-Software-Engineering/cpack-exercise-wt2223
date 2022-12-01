set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "SSE cpack example project")
set(CPACK_PACKAGE_DESCRIPTION "This is an example project to test CPack.")

set(CPACK_PACKAGE_VENDOR "Julius Herg")
set(CPACK_PACKAGE_CONTACT "julius@jherb.de")
set(CPACK_PACKAGE_MAINTAINERS "Julius Herb ${CPACK_PACKAGE_CONTACT}")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://github.com/juliusgh/cpack-exercise-wt2223")

include(CPack)
