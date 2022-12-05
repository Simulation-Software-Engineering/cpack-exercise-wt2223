set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "cpackexample exercise that took hours of my life"
  CACHE STRING "Extended summary.")

set(CPACK_PACKAGE_VENDOR "SSE Fellow Student")
set(CPACK_PACKAGE_CONTACT "goncberk@gmail.com")
set(CPACK_PACKAGE_MAINTAINERS "Gonc Berk Gunes")
set(CPACK_PACKAGE_HOMEPAGE_URL "https://simulation-software-engineering.github.io")

include(CPack)
