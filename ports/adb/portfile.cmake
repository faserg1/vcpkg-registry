vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF d308885aa2e6a026868c626c3a27f40b6b426aaf
  SHA512 a2a61b60bf80a0c617e43a348db24b2119341c8522cd391352d48fee66c89ce8aa7b081c54722926d74490579e6f6acae81e638430f3363737f9c8fdeef908ab
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
