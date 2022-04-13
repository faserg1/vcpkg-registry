vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 6f99e41d82a1f9ab719a5be7f017024e4cf55835
  SHA512 00c5100d25f21d20df457c282c025f38ca5bb64c1dc2ef4da3ca6e038407a1f158a436e5441d72f90428ccd41650c8fb406a066a766ee953cc0068acda125297
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
