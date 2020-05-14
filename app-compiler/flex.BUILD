licenses(["notice"])  # BSD 2-clause

exports_files(["LICENSE"])

cc_library(
    name = "libflex",
    srcs = [
        "src/libmain.c",
        "src/libyywrap.c",
    ]
)

# The default build system of flex will actually build a stage1 and regenerate
# scan.c with it, then build the real flex.
# However, it offers little advantage AFAIK (only #line directives will be
# different)
# Hence, for the sake of simplicity, we just use the bundled scan.c.

cc_binary(
    name = "flex",
    srcs = glob([
        "src/*.c",
        "src/*.h",
    ], exclude = [
        "src/libmain.c",
        "src/libyywrap.c",
    ]),
    copts = [
        "-DLOCALEDIR=\\\"/usr/local/share/locale\\\"",
        "-DENABLE_NLS=1",
        "-DHAVE_ALLOCA=1",
        "-DHAVE_ALLOCA_H=1",
        "-DHAVE_DCGETTEXT=1",
        "-DHAVE_DLFCN_H=1",
        "-DHAVE_DUP2=1",
        "-DHAVE_FORK=1",
        "-DHAVE_GETTEXT=1",
        "-DHAVE_INTTYPES_H=1",
        "-DHAVE_LIBINTL_H=1",
        "-DHAVE_LIBM=1",
        "-DHAVE_LIMITS_H=1",
        "-DHAVE_LOCALE_H=1",
        "-DHAVE_MALLOC=1",
        "-DHAVE_MALLOC_H=1",
        "-DHAVE_MEMORY_H=1",
        "-DHAVE_MEMSET=1",
        "-DHAVE_NETINET_IN_H=1",
        "-DHAVE_POW=1",
        "-DHAVE_PTHREAD_H=1",
        "-DHAVE_REALLOC=1",
        "-DHAVE_REALLOCARRAY=1",
        "-DHAVE_REGCOMP=1",
        "-DHAVE_REGEX_H=1",
        "-DHAVE_SETLOCALE=1",
        "-DHAVE_STDBOOL_H=1",
        "-DHAVE_STDINT_H=1",
        "-DHAVE_STDLIB_H=1",
        "-DHAVE_STRCASECMP=1",
        "-DHAVE_STRCHR=1",
        "-DHAVE_STRDUP=1",
        "-DHAVE_STRINGS_H=1",
        "-DHAVE_STRING_H=1",
        "-DHAVE_STRTOL=1",
        "-DHAVE_SYS_STAT_H=1",
        "-DHAVE_SYS_TYPES_H=1",
        "-DHAVE_SYS_WAIT_H=1",
        "-DHAVE_UNISTD_H=1",
        "-DHAVE_VFORK=1",
        "-DHAVE_WORKING_FORK=1",
        "-DHAVE_WORKING_VFORK=1",
        "-DHAVE__BOOL=1",
        "-DM4=\\\"/usr/bin/m4\\\"",
        "-DPACKAGE=\\\"flex\\\"",
        "-DSTDC_HEADERS=1",
        "-DVERSION=\\\"2.6.4\\\"",
        "-DYYTEXT_POINTER=1",
    ],
    visibility = ["//visibility:public"],
)
