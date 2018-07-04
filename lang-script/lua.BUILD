package(default_visibility = ["//visibility:public"])

licenses(["restricted"])  # Vim license

COPTS = [
    "-DLUA_COMPAT_5_2",
    "-DLUA_USE_MACOSX",
    ]
LINKOPTS = [
    "-lreadline",
    "-ldl",
    ]

cc_binary(
    name = "lua",
    srcs = ["src/lua.c"],
    deps = ["lualib"],
    copts = COPTS,
    linkopts = LINKOPTS,
)

cc_library(
    name = "lualib",
    srcs = glob([
        "src/*.c",
        "src/*.h",
        ], exclude=[
        "src/lua.c",
        "src/luac.c",
        ]),
    hdrs = [
        "src/lua.h",
        ],
    includes = ["src"],
    copts = COPTS,
)
