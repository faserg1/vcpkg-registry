vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 0f7b34e76917f4b5a7d48394fde84fd33c70feae
  SHA512 150cf2dd065617c35d48cf73e92cdca02beb00ff9c2b6a29ad2916bd57451aef45a7022a9946098c9a8c8b55e09a32d73ea18abd020d51a4e5f6e0e6e217a037
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
