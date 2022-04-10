vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 25d5d40823de784a10b6e2d698aba632809ca6ba
  SHA512 e7bcf289e5afb2d6446529baedfc8cd4bad3be241b5bc0f057c722c931257ea8a8d4acc80f1350b714edfdba42418c94c9d2d9cc0f21661b0ecf8b7e7d087646
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
