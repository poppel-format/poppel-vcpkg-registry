vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO poppel-format/poppel-cpp
    REF 8720fa3897eb4dcf38bcf0ec10e16350bcdf2d82
    SHA512 5f288fc1f6f274d9e0006cc1acb9c2b7a734937b4fffd30475bff3252db4358079d4b03a4427429d20692109c8ae00c07dcbd3d9c5ea2cc36d51d664c9d158da
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

# TODO: uncomment following lines when LICENSE is added.
# file(
#     INSTALL "${SOURCE_PATH}/LICENSE"
#     DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
#     RENAME copyright
# )
