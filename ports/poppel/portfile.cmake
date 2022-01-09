vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO poppel-format/poppel-cpp
    REF 37ec9a7a8a2ca8c60bdc7319ebb43b196158a83b
    SHA512 a97ab8f5c8fcd63f6b9d13a2e6fa1191f9b0bc960b4e248fdf46225fdcf0088c81709a0e0e3aa272b055cf4fd88b621027dc2542e88502735c3a5b6daa9675dd
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
