def windows_select(yay, nay):
    return select({
            "@//toolchain-utils:x64_windows": yay,
            "@//toolchain-utils:x64_windows_msvc": yay,
            "//conditions:default": nay,
            })
