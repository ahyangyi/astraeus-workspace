# Description:
#   libpng is the official PNG reference library.

licenses(["notice"])  # BSD/MIT-like license

exports_files(["LICENSE"])

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
    deps = ["@zlib_archive//:zlib"],
)

genrule(
    name = "gen-fake-config.h",
    outs = [
        "gen/config.h",
        ],
    cmd = "touch $(@D)/config.h",
    )

genrule(
    name = "gen-fake-pnglibconf.h",
    outs = [
        "gen/pnglibconf.h",
        ],
    cmd = "touch $(@D)/pnglibconf.h",
    )
