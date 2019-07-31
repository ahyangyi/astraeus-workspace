package(default_visibility = ["//visibility:public"])

licenses(["notice"])

load("@//utils-base:files.bzl", "template_rule", "touch")

cc_library(
    name = "tcmalloc",
    srcs = [
        "src/tcmalloc.cc",
        "gen/config.h",
        "gen/gperftools/tcmalloc.h",
    ] + glob([
        "src/gperftools/*.h",
        "src/base/*.h",
        "src/*.h",
    ]),
    hdrs = [
        "src/tcmalloc.h",
    ],
    copts = [
        "-Iexternal/gperftools/src",
        "-I$(GENDIR)/external/gperftools/gen/",
        "-Wno-unused-local-typedefs",
        "-Wno-sign-compare",
        "-DHAVE_INTTYPES_H=1",
        "-DHAVE_LIMITS_H=1",
        "-DHAVE_STDBOOL_H=1",
        "-DHAVE_STDINT_H=1",
        "-DHAVE_STDLIB_H=1",
        "-DHAVE_STRING_H=1",
        "-DHAVE_SYS_TYPES_H=1",
        "-DHAVE_UNISTD_H=1",
        "-DSTL_NAMESPACE=std",
        '-DPRIuS=\\"lu\\"',
        "-DGPERFTOOLS_CONFIG_H_",
        "-Wno-attribute-alias",
    ],
)

touch([
    "gen/config.h",
    ])

template_rule(
    name = "gperftools_tcmalloc_h",
    src = "src/gperftools/tcmalloc.h.in",
    out = "gen/gperftools/tcmalloc.h",
    substitutions = {
        '@TC_VERSION_MAJOR@': '2',
        '@TC_VERSION_MINOR@': '7',
        '@TC_VERSION_PATCH@': '',
        '@ac_cv_have_struct_mallinfo@': '1',
        '@ac_cv_have_std_align_val_t@': '1',
    },
)
