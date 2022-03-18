vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 4592cba3cb4493906f42dcb1a4478ef7d906345b
  SHA512 e6cb37fece536e6ea84475f28af098458f592b69dfc10b50620a28732cc4e87f902309bf8986ca3073b88a8f5810062d15d233191e5d701d16bbfe8589400628
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
