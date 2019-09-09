package(default_visibility = ["//visibility:public"])

licenses(["notice"])

load("@//utils-base:files.bzl", "write_file_rule")

cc_library(
    name = "headers",
    hdrs = glob([
        "Include/*.h"
    ]) + [
        "Include/pyconfig.h",
    ],
    includes = ["Include"],
)

write_file_rule(
    name = "gen-pyconfig",
    out = "Include/pyconfig.h",
    content = """
#define SIZEOF_DOUBLE 8
#define SIZEOF_FLOAT 4
#define SIZEOF_FPOS_T 16
#define SIZEOF_INT 4
#define SIZEOF_LONG 8
#define SIZEOF_LONG_DOUBLE 16
#define SIZEOF_LONG_LONG 8
#define SIZEOF_OFF_T 8
#define SIZEOF_PID_T 4
#define SIZEOF_PTHREAD_T 8
#define SIZEOF_SHORT 2
#define SIZEOF_SIZE_T 8
#define SIZEOF_TIME_T 8
#define SIZEOF_UINTPTR_T 8
#define SIZEOF_VOID_P 8
#define SIZEOF_WCHAR_T 4
#define SIZEOF__BOOL 1
#define HAVE_GCC_UINT128_T 1
#define HAVE_INT32_T 1
#define HAVE_INT64_T 1
#define HAVE_LONG_LONG 1
#define HAVE_SSIZE_T 1
#define HAVE_UINT32_T 1
#define HAVE_UINT64_T 1
#define HAVE_UINTPTR_T 1
#define PY_FORMAT_LONG_LONG "ll"
""")
