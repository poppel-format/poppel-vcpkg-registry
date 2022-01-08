vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO poppel-format/poppel-cpp
    REF f392e195314beba0cab8f9b739a3f4beb6da476d
    SHA512 eabdeec2b1a43817770495b5fb0827d4fe812c96d83754e076aecfe4cd3fb5f3f54292f2acdf79bd18a56c71122c6112fc27c8172b62db225c285aa73934ec6d
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -Dpoppel_install=ON
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME poppel CONFIG_PATH lib/cmake/poppel)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
    INSTALL "${SOURCE_PATH}/LICENSE"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
    RENAME copyright
)
