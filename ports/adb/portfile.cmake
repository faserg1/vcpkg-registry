vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 8c4973bd2c84a92fd997aafee660569ca165a5c0
  SHA512 e228a39cba56ccd2825270350f023cffc988472c425eb6891d0ac19b9f6495e43eeba6dac56d9fe71fedf85403e61adb6dca0d1e65f46b508c18a586ee932a9a
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
