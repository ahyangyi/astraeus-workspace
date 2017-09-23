# Description:
#   libpng is the official PNG reference library.

licenses(["notice"])  # BSD/MIT-like license

exports_files(["LICENSE"])

load("@//utils-base:files.bzl", "touch")

cc_library(
    name = "png",
    srcs = [
        "png.c",
        "pngerror.c",
        "pngget.c",
        "pngmem.c",
        "pngpread.c",
        "pngread.c",
        "pngrio.c",
        "pngrtran.c",
        "pngrutil.c",
        "pngset.c",
        "pngtrans.c",
        "pngwio.c",
        "pngwrite.c",
        "pngwtran.c",
        "pngwutil.c",
        "pnginfo.h",
        "pngpriv.h",
        "pngstruct.h",
        "pngdebug.h",
    ],
    includes = [
        ".",
    ],
    hdrs = [
        "png.h",
        "pngconf.h",
        "gen/config.h",
        "gen/pnglibconf.h",
    ],
    copts = [
        "-I$(GENDIR)/external/png_archive/gen/",
        "-DPNG_ZLIB_VERNUM=0",
        "-DPNG_LINKAGE_API=extern",
        "-DPNG_LINKAGE_FUNCTION=extern",
    ],
    linkopts = ["-lm"],
    visibility = ["//visibility:public"],
    deps = ["@zlib//:zlib"],
)

touch([
    "gen/config.h",
    "gen/pnglibconf.h",
    ])
