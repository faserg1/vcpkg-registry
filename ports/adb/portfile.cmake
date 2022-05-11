vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 433aed950aa0ac0cae3dd9b8cbdfdc11781f02e5
  SHA512 83f2c4e2b6838664f67c69b1398cccf1d9c9b47241551ae4216fb5f1797462b3836b7fbf739de66fb593cfe70c0afd0ef5d1f66ae6f55440e71320d09d0d3cb2
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
  OPTIONS
    -DADB_CMAKE_OUT=share/libadb
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH "share/libadb")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)