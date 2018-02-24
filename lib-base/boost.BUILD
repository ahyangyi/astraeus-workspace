package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # BSD/MIT-like license (for boost)

copts = [
    "-Wno-deprecated-declarations", # For boost::filesystem
    ]

cc_library(
    name = "boost-headers",
    hdrs = glob([
        "**/*.hpp",
        "**/*.ipp",
        ]),
    includes = [
        ".",
        ],
    )

sublibraries = [
    "atomic",
    "chrono",
    "container",
    "date_time",
    "filesystem",
    "graph",
    "iostreams",
#    "log",     # Fails for now
    "math_c99",
    "math_tr1",
    "prg_exec_monitor",
    "program_options",
    "random",
    "regex",
    "serialization",
    "signals",
    "system",
    "thread",
    "timer",
    "type_erasure",
    "unit_test_framework",
    "wave",
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
