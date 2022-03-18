vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 42dd9ca0863e74df5591cf5669c42133412a0070
  SHA512 9c98dcaef220e5d29663da39655311ff11821fa68de96dda106966cd13bd2f71f3533a26a99a10032a75bfa36e0d8c6876382ab044ef98d1956a06e0aaaf9460
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets(CONFIG_PATH "share/libadb")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
