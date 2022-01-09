vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO poppel-format/poppel-cpp
    REF 9ed0ddb9211ebd96bacbe194a0459f508d2b88c7
    SHA512 8d04dfe8788e55d37f00b64afde09d3c50802a4257195ca9d525b7722f00bea7caacd227775931bf518f1e1a4f269421fd5408f5e7035f0c0f22df656c97b165
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
