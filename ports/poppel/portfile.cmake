vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO poppel-format/poppel-cpp
    REF 52d5bc8e0e4af475cd4b6bf733302a2b6ccfcc70
    SHA512 5f61e5c59ac800f8a326754b04327c68902d0b0356da68098153e51c5c34bb04b473909f564853be5ba7bf5708bf9d17b409cfc774ecd85f81adce785f6f8da7
    HEAD_REF drel
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
# TODO: uncomment following line when ready.
# vcpkg_cmake_config_fixup()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")

# TODO: uncomment following lines when LICENSE is added.
# file(
#     INSTALL "${SOURCE_PATH}/LICENSE"
#     DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
#     RENAME copyright
# )
