vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF a16f4db8162f8a77e382d5db05534773ecd083a7
  SHA512 42801ee9ac52bcc3791603913429e681cef5781c741d4b7247adf97005ef6602090dcc2715c14d29f7ef2f92445e9aa99305d009b95c4da119f3e32a9467b5ce
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
