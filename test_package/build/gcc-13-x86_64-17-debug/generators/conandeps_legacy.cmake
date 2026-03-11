message(STATUS "Conan: Using CMakeDeps conandeps_legacy.cmake aggregator via include()")
message(STATUS "Conan: It is recommended to use explicit find_package() per dependency instead")

find_package(req1)
find_package(GTest)
find_package(PCRE2)
find_package(ZLIB)
find_package(Eigen3)

set(CONANDEPS_LEGACY  req1::req1  gtest::gtest  pcre2::pcre2  ZLIB::ZLIB  Eigen3::Eigen )