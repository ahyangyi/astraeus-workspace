package(default_visibility = ['//visibility:public'])

cc_library(
    name = "mpc",
    srcs = glob([
        "src/*.c",
        "src/*.h",
        ]),
    hdrs = [
        "src/mpc.h",
        ],
    copts = [
        "-DHAVE_CONFIG_H=1",
        "-Iexternal/mpc/src",
        "-Wno-bool-operation",
        "-Wno-unused-but-set-variable",
        "-std=c99",
        ],
    deps = [
        "@gmp//:gmp",
        "@mpfr//:mpfr",
        ],
    )
