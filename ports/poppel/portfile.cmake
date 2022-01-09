vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO poppel-format/poppel-cpp
    REF b23df6cbfec823c204cdea85182f331b93275df2
    SHA512 de7ccb0d42f9c3cd0411209e8db5f2ae9ec029160e9bafd5d841ef502783eb3861dd0a0e0a35ab198247ae9654834272a3c7337b57c49320a84e41256030668a
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
