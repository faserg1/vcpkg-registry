vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF d97128a1cfed5a7df7a75e381ff17586ce10d20c
  SHA512 4323c4a813ce40385baf3a01cf96934a6b52bde409fe9343b3d07575ef83501eaed62193b47c4d3a3d86043dcb724da33ad6c262e8e4654b12efbadd3fbef486
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
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)