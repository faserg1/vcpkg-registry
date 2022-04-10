vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 4b856c0216ecc0e8a101704e3d6c30ed6a52f7f4
  SHA512 e2d07a2374d7b1d49b0dc0a974d39686c125edf45e227b03fa1ebe5b0da59705935cdc9f70f891cd9967718cabf81b2cd52cba5bc10111212c1090382e93a8af
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
