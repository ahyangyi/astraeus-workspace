licenses(["notice"])  # BSD/MIT-like license

exports_files(["LICENSE"])

load("@//utils-base:files.bzl", "touch", "write_file_rule")

cc_library(
    name = "tiff",
    srcs = glob([
        "libtiff/*.c",
        "libtiff/*.h",
        ], exclude=[
        "libtiff/tif_win32.c",
        ]) + [
        "libtiff/tif_config.h",
        ],
    hdrs = [
        "libtiff/tiff.h",
        "libtiff/tiffconf.h",
        "libtiff/tiffio.h",
        "libtiff/tiffvers.h",
        ],
    copts = [
        "-I$(GENDIR)/external/tiff/libtiff/",
        "-DCCITT_SUPPORT=1",
        "-DCHECK_JPEG_YCBCR_SUBSAMPLING=1",
        "-DCXX_SUPPORT=1",
        "-DDEFAULT_EXTRASAMPLE_AS_ALPHA=1",
        "-DHAVE_FCNTL_H=1",
        "-DHAVE_GETOPT=1",
        "-DHAVE_INTTYPES_H=1",
        "-DHAVE_STDINT_H=1",
        "-DHAVE_STDLIB_H=1",
        "-DHAVE_STRING_H=1",
        "-DHAVE_UNISTD_H=1",
        '-DTIFF_INT32_FORMAT=\\"%d\\"',
        '-DTIFF_INT64_FORMAT=\\"%ld\\"',
        '-DTIFF_PTRDIFF_FORMAT=\\"%ld\\"',
        '-DTIFF_SIZE_FORMAT=\\"%lu\\"',
        '-DTIFF_SSIZE_FORMAT=\\"%ld\\"',
        '-DTIFF_UINT32_FORMAT=\\"%u\\"',
        '-DTIFF_UINT64_FORMAT=\\"%lu\\"',
        "-Wno-unused-but-set-variable",
        ],
    includes = [
        "libtiff",
        ],
    visibility = ["//visibility:public"],
)

touch([
    "libtiff/tif_config.h",
    ])

write_file_rule(
    name = "gen-libtiff-tiffconf.h",
    out = "libtiff/tiffconf.h",
    content = """
#ifndef _TIFFCONF_
#define _TIFFCONF_
#define TIFF_INT16_T signed short
#define TIFF_INT32_T signed int
#define TIFF_INT64_T signed long
#define TIFF_INT8_T signed char
#define TIFF_UINT16_T unsigned short
#define TIFF_UINT32_T unsigned int
#define TIFF_UINT64_T unsigned long
#define TIFF_UINT8_T unsigned char
#define TIFF_SSIZE_T signed long
#define TIFF_PTRDIFF_T ptrdiff_t
#define HAVE_IEEEFP 1
#define HOST_FILLORDER FILLORDER_LSB2MSB
#define HOST_BIGENDIAN 0
#define CCITT_SUPPORT 1
#define LOGLUV_SUPPORT 1
#define LZW_SUPPORT 1
#define NEXT_SUPPORT 1
#define PACKBITS_SUPPORT 1
#define PIXARLOG_SUPPORT 1
#define THUNDER_SUPPORT 1
#define ZIP_SUPPORT 1
#define STRIPCHOP_DEFAULT TIFF_STRIPCHOP
#define SUBIFD_SUPPORT 1
#define DEFAULT_EXTRASAMPLE_AS_ALPHA 1
#define CHECK_JPEG_YCBCR_SUBSAMPLING 1
#define MDI_SUPPORT 1
#define COLORIMETRY_SUPPORT
#define YCBCR_SUPPORT
#define CMYK_SUPPORT
#define ICC_SUPPORT
#define PHOTOSHOP_SUPPORT
#define IPTC_SUPPORT

#endif /* _TIFFCONF_ */"""
)
