# Description:
#   ImageMagick® is a software suite to create, edit, compose, or convert bitmap images.

licenses(["notice"])  # Apache 2.0 license

exports_files(["LICENSE"])

load("@//utils-base:files.bzl", "touch", "template_rule")

copts = [
    "-DMAGICKCORE_QUANTUM_DEPTH=16",
    "-DMAGICKCORE_HDRI_ENABLE=0",
    ]

cc_library(
    name = "libmagick",
    srcs = glob([
        "coders/*.c",
        "coders/*.h",
        "filters/*.c",
        "filters/*.h",
        "magick/*.c",
        "magick/*.h",
        "wand/*.c",
        "wand/*.h",
        ], exclude = [
        "magick/magick-baseconfig.h",
        "coders/tiff.c",    # Breaks build
        "wand/deprecate.c",
        ]),
    copts = copts,
    deps = [
        ":generated",
        "@bzip2//:bzip2",
        "@fftw//:fftw",
        "@gif//:gif",
        "@jpeg//:jpeg",
        "@png//:png",
        "@xz//:lzma",
        ],
    linkopts = [
        "-lpthread",
        ],
    )

touched_headers = [
    "gen/magick/version.h",
    "gen/config/config.h",
    ]

cc_library(
    name = "generated",
    hdrs = touched_headers + [
        "gen/magick/magick-baseconfig.h",
        ],
    includes = ["gen"],
    )

template_rule(
    name = "gen-magick-magick-baseconfig.h",
    src = "magick/magick-baseconfig.h",
    out = "gen/magick/magick-baseconfig.h",
    substitutions = {
        "#define MAGICKCORE_DJVU_DELEGATE 1": "",
        "#define MAGICKCORE_DJVU_DELEGATE 1": "",
        "#define MAGICKCORE_FONTCONFIG_DELEGATE 1": "",
        "#define MAGICKCORE_FREETYPE_DELEGATE 1": "",
        "#define MAGICKCORE_JBIG_DELEGATE 1": "",
        "#define MAGICKCORE_LCMS_DELEGATE 1": "",
        "#define MAGICKCORE_LIBOPENJP2_DELEGATE 1": "",
        "#define MAGICKCORE_OPENEXR_DELEGATE 1": "",
        "#define MAGICKCORE_PANGOCAIRO_DELEGATE 1": "",
        "#define MAGICKCORE_RAW_R_DELEGATE 1": "",
        "#define MAGICKCORE_SANS_DELEGATE 1": "",
        "#define MAGICKCORE_TIFF_DELEGATE 1": "",
        "#define MAGICKCORE_WEBP_DELEGATE 1": "",
        "#define MAGICKCORE_WMF_DELEGATE 1": "",
        "#define MAGICKCORE_X11_DELEGATE 1": "",
        "#define MAGICKCORE_XML_DELEGATE 1": "",
    },
)

touch(touched_headers)

tools=[
    "animate", "compare", "composite", "conjure", "convert", "display", "identify", "import", "magick", "magick-script", "mogrify", "stream",
    ]

[cc_binary(
    name = "bin/{}".format(tool),
    srcs = glob([
        "utilities/{}.c".format(tool),
        "magick/*.h",
        "wand/*.h",
        ]),
    copts = copts,
    deps = [
        ":libmagick",
        ],
    ) for tool in tools]
