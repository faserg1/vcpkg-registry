vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 8b0bd7539bd1d121478ea6353eb369d0efb2e3ea
  SHA512 787640fcdbfd7ba9180c7cb18193677b49c348e0ac8d6c76f2a8d56dc512fe972b65185135037fd124aee5811333b760a92ef84246162ffd870c75e9667d50be
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH "share/libadb")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
