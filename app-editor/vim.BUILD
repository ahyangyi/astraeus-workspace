package(default_visibility = ["//visibility:public"])

licenses(["restricted"])  # Vim license

load("@//utils-base:files.bzl", "touch", "write_file_rule", "template_rule")

cc_library(
    name = "vim-include",
    hdrs = glob([
        "src/proto/*.pro",
        "src/regexp_nfa.c",
        ]),
    includes = [
        "src/proto",
        ],
)

cc_binary(
    name = "xxd",
    srcs = glob([
        "src/xxd/*.c",
    ]),
)

srcs = glob([
    "src/*.c",
    "src/*.h",
    "src/xdiff/*.c",
    "src/xdiff/*.h",
    ], exclude = [
    "src/*_test.c",
    "src/dll*.c",
    "src/dosinst.c",
    "src/gui.c",
    "src/gui_*.c",
    "src/hangulin.c",
    "src/if_*.c",
    "src/integration.c",
    "src/os_*.c",
    "src/uninstal.c",
    "src/vimrun.c",
    "src/winclip.c",
    "src/workshop.c",
    "src/xpm_w32.c",
    "src/regexp_nfa.c", # Actually a header
    "src/xdiff/xinclude.h",
    ]) + [
    "src/os_unix.c",
    "gen/pathdef.c",
    ]

normal_copts = [
    "-DFEAT_NORMAL",
    "-DHAVE_CONFIG_H=1",
    "-DHAVE_DATE_TIME=1",
    "-DHAVE_DIRENT_H=1",
    "-DHAVE_ERRNO_H=1",
    "-DHAVE_FCNTL_H=1",
    "-DHAVE_GETCWD=1",
    "-DHAVE_GETTIMEOFDAY=1",
    "-DHAVE_LIBGEN_H=1",
    "-DHAVE_MATH_H=1",
    "-DHAVE_OPENDIR=1",
    "-DHAVE_OSPEED=1",
    "-DHAVE_POLL_H=1",
    "-DHAVE_PUTENV=1",
    "-DHAVE_QSORT=1",
    "-DHAVE_READLINK=1",
    "-DHAVE_SETENV=1",
    "-DHAVE_STDINT_H=1",
    "-DHAVE_STDIO_H=1",
    "-DHAVE_STDLIB_H=1",
    "-DHAVE_STRERROR=1",
    "-DHAVE_STRING_H=1",
    "-DHAVE_SYS_IOCTL_H=1",
    "-DHAVE_SYS_TIME_H=1",
    "-DHAVE_SYS_WAIT_H=1",
    "-DHAVE_TERMCAP_H=1",
    "-DHAVE_TERMIO_H=1",
    "-DHAVE_TERMIO_H=1",
    "-DHAVE_TGETENT=1",
    "-DHAVE_UNISTD_H=1",
    "-DHAVE_UTIME_H=1",
    "-DHAVE_UP_BC_PC=1",
    "-DRETSIGTYPE=void",
    "-DSIGRETURN=return",
    "-DTIME_WITH_SYS_TIME=1",
    "-DUNIX=1",
    "-DVIM_SIZEOF_INT=4",
    "-Iexternal/vim/src/",
    "-Iexternal/vim/src/xdiff/",
    "-Wno-parentheses",
    ]

cc_binary(
    name = "vim",
    srcs = srcs,
    copts = normal_copts,
    deps = [
        ":vim-include",
        ":gen",
        ],
)

cc_binary(
    name = "vim-python35",
    srcs = srcs + [
        "src/if_python3.c",
        ],
    copts = normal_copts + [
        "-DFEAT_PYTHON3=1",
        "-DDYNAMIC_PYTHON3=1",
        '-DDYNAMIC_PYTHON3_DLL=\\\"libpython3.5m.so\\\"',
        ],
    deps = [
        ":vim-include",
        ":gen",
        "@python35//:headers",
        ],
    linkopts = [
        "-ldl",
        ],
)

cc_binary(
    name = "vim-python36",
    srcs = srcs + [
        "src/if_python3.c",
        ],
    copts = normal_copts + [
        "-DFEAT_PYTHON3=1",
        "-DDYNAMIC_PYTHON3=1",
        '-DDYNAMIC_PYTHON3_DLL=\\\"libpython3.6m.so\\\"',
        ],
    deps = [
        ":vim-include",
        ":gen",
        "@python36//:headers",
        ],
    linkopts = [
        "-ldl",
        ],
)

cc_library(
    name = "gen",
    hdrs = [
        "gen/auto/osdef.h",
        "gen/auto/config.h",
        "gen/xdiff/xinclude.h",
        ],
    includes = [
        "gen",
        "gen/xdiff",
        ],
    )

touch([
    "gen/auto/config.h",
    "gen/auto/osdef.h",
    ])

write_file_rule(
    name = "gen-pathdef_c",
    out = "gen/pathdef.c",
    content = "#include \"vim.h\"\n" +\
             "char_u *default_vim_dir = (char_u *)\"/usr/share/vim\";\n" +\
             "char_u *default_vimruntime_dir = (char_u *)\"\";\n" +\
             "char_u *all_cflags = (char_u *)\"Built in Astraeus Distribution\";\n" +\
             "char_u *all_lflags = (char_u *)\"Built in Astraeus Distribution\";\n" +\
             "char_u *compiled_user = (char_u *)\"Astreaus\";\n" +\
             "char_u *compiled_sys = (char_u *)\"Astraeus\";",
    )

template_rule(
    name = "copy xinclude",
    src = "src/xdiff/xinclude.h",
    out = "gen/xdiff/xinclude.h",
    substitutions = {}
)
