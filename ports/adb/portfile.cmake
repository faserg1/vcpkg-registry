vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO faserg1/adb
  REF 75a94cc7be207a2482abf52d9dfccd94329152c1
  SHA512 4a02fda63e548921c29cc80b6318df0c9ece49002a3727459802324f5cb94486e2c4a9afb9ecdb5e621c2c5bea48ce9585dadf49d3ada50b3121f22b2ae836f8
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
