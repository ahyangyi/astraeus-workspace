package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # BSD/MIT-like license (for zlib)

cc_library(
    name = "lzma",
    srcs = glob([
        "src/liblzma/*/*.c",
        "src/liblzma/*/*.h",
        "src/common/*.c",
        "src/common/*.h",
    ], exclude = [
        "src/liblzma/check/crc32_small.c",
        "src/liblzma/check/crc32_tablegen.c",
        "src/liblzma/check/crc64_small.c",
        "src/liblzma/check/crc64_fast.c",
        "src/liblzma/rangecoder/price_tablegen.c",
        "src/liblzma/lzma/fastpos_tablegen.c",
    ]),
    copts = [
        "-Iexternal/xz/src/common",
        "-Iexternal/xz/src/liblzma/check",
        "-Iexternal/xz/src/liblzma/common",
        "-Iexternal/xz/src/liblzma/delta",
        "-Iexternal/xz/src/liblzma/lz",
        "-Iexternal/xz/src/liblzma/lzma",
        "-Iexternal/xz/src/liblzma/rangecoder",
        "-Iexternal/xz/src/liblzma/simple",
        "-DHAVE_INTTYPES_H=1",
        "-DHAVE_LIMITS_H=1",
        "-DHAVE_STDBOOL_H=1",
        "-DHAVE_STDINT_H=1",
        "-DHAVE_STDLIB_H=1",
        "-DHAVE_STRING_H=1",
        "-DHAVE_SYS_TYPES_H=1",
        "-DHAVE_UNISTD_H=1",
        "-DMYTHREAD_POSIX=1",
        "-DHAVE_CONFIG_H=1",
        ],
)

#define HAVE_BYTESWAP_H 1
#define HAVE_DLFCN_H 1
#define HAVE_FCNTL_H 1
#define HAVE_GETOPT_H 1
#define HAVE_IMMINTRIN_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_LIMITS_H 1
#define HAVE_MEMORY_H 1
#define HAVE_MF_HC3 1
#define HAVE_MF_HC4 1
#define HAVE_STDBOOL_H 1
#define HAVE_STDINT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRINGS_H 1
#define HAVE_STRING_H 1
#define HAVE_SYS_PARAM_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_SYS_TIME_H 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_UNISTD_H 1

