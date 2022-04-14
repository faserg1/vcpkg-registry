vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF a9ffe6c1f8a9a517e52fa0a4bcbc0be0a976fe88
  SHA512 de586ef7baed9737ac57e8e59fa85697e4b41391aab59095cbe53774d7a122e461ab4e4254cfd6468e9a23f4816d1ff74845f3b7e7cf6c5b89c48ddbd166cd12
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
