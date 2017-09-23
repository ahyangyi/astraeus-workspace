def windows_select(yay, nay):
    return select({
            "@//utils-toolchain:x64_windows": yay,
            "@//utils-toolchain:x64_windows_msvc": yay,
            "//conditions:default": nay,
            })
