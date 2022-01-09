vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO poppel-format/poppel-cpp
    REF 0129bc3981ccd491c31f3bb87509d36666670bd3
    SHA512 803f58b920506c25d9c5478e8469ae49fc207e06a2711960c77c5703eb2c170dbfc3490f705e6accb04f563e98f81e19f7854f9214c6b844326fa6768bc882c4
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
