package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # BSD/MIT-like license (for boost)

copts = [
    "-Wno-deprecated-declarations", # For boost::filesystem
    ]

cc_library(
    name = "boost-headers",
    hdrs = glob([
        "**/*.hpp"
        ]),
    includes = [
        ".",
        ],
    )

sublibraries = [
    "filesystem",
    "system",
    ]

[cc_library(
    name = "boost-{}".format(lib),
    srcs = glob([
        "libs/{}/src/*.cpp".format(lib),
        ]),
    deps = [
        ":boost-headers",
        ],
    copts = copts,
    ) for lib in sublibraries]
