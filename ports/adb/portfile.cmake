vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF b71c8593aad5a00b661ddfb614c5ea93777ab1f9
  SHA512 89e0e96169f6afa3f8e26790e2850ff8eaf0157ad693eef60544c228ee4baccffca47a4d22a40bf7a9f98e5027f7cf5e0040acf3a78232287374aba18191c148
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
