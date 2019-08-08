package(default_visibility = ["//visibility:public"])

licenses(["notice"])

load("@//utils-base:files.bzl", "template_rule", "touch")

copts = [
        "-Iexternal/gperftools/src",
        "-I$(GENDIR)/external/gperftools/gen/",
        "-Wno-unused-local-typedefs",
        "-Wno-sign-compare",
        "-Wno-unused-function",
        "-Wno-unused-result",
        "-Wno-attribute-alias",
        "-Wno-alloc-size-larger-than",
        "-Wno-address",
        "-DHAVE_CONFIG_H=1",
        "-DHAVE_FCNTL_H=1",
        "-DHAVE_INTTYPES_H=1",
        "-DHAVE_LIMITS_H=1",
        "-DHAVE_MALLOC_H=1",
        "-DHAVE_MEMORY_H=1",
        "-DHAVE_MMAP=1",
        "-DHAVE_STDBOOL_H=1",
        "-DHAVE_STDINT_H=1",
        "-DHAVE_STDLIB_H=1",
        "-DHAVE_STRING_H=1",
        "-DHAVE_SYS_TYPES_H=1",
        "-DHAVE_UNISTD_H=1",
        "-DHAVE_PTHREAD=1",
        "-DSTL_NAMESPACE=std",
        '-DPRIuS=\\"lu\\"',
        '-DPRIxS=\\"lx\\"',
        "-DGPERFTOOLS_CONFIG_H_",
        "-DPERFTOOLS_DLL_DECL=",
        '-DPACKAGE_STRING=\\"gperftools\\ 2.7\\"',
        '-DPACKAGE_VERSION=\\"2.7\\"',
        "-fno-builtin-malloc",
        "-fno-builtin-free",
        "-fno-builtin-realloc",
        "-fno-builtin-calloc",
        "-fno-builtin-cfree",
        "-fno-builtin-memalign",
        "-fno-builtin-posix_memalign",
        "-fno-builtin-valloc",
        "-fno-builtin-pvalloc",
        "-fsized-deallocation",
        "-faligned-new",
    ]

cc_library(
    name = "tcmalloc_minimal",
    srcs = [
        "src/tcmalloc.cc",
        "src/common.cc",
	    "src/internal_logging.cc",
        "src/system-alloc.cc",
	    "src/memfs_malloc.cc",
	    "src/central_freelist.cc",
	    "src/page_heap.cc",
	    "src/sampler.cc",
	    "src/span.cc",
	    "src/stack_trace_table.cc",
	    "src/static_vars.cc",
	    "src/symbolize.cc",
	    "src/thread_cache.cc",
	    "src/malloc_hook.cc",
	    "src/malloc_extension.cc",
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
    deps = [
        ":tcmalloc_minimal_internal",
    ],
    linkopts = [
        "-lpthread",
    ],
    copts = copts + [
        "-DNO_TCMALLOC_SAMPLES",
        "-DNO_HEAP_CHECK",
    ],
)

cc_library(
    name = "tcmalloc_minimal_internal",
    deps = [
        ":maybe_threads",
        ":spinlock",
    ],
)

cc_library(
    name = "logging",
    srcs = [
        "src/base/logging.cc",
        "src/base/dynamic_annotations.c",
        "gen/config.h",
        "gen/gperftools/tcmalloc.h",
    ] + glob([
        "src/base/*.h",
        "src/third_party/*.h",
        "src/*.h",
    ]),
    linkopts = [
        "-lpthread",
    ],
    copts = copts,
)

cc_library(
    name = "maybe_threads",
    srcs = [
        "src/maybe_threads.cc",
        "gen/config.h",
        "gen/gperftools/tcmalloc.h",
    ] + glob([
        "src/base/*.h",
        "src/*.h",
    ]),
    linkopts = [
        "-lpthread",
    ],
    copts = copts,
)

cc_library(
    name = "sysinfo",
    srcs = [
        "src/base/sysinfo.cc",
        "gen/config.h",
        "gen/gperftools/tcmalloc.h",
    ] + glob([
        "src/base/*.h",
        "src/*.h",
    ]),
    copts = copts,
)

cc_library(
    name = "spinlock",
    srcs = [
        "src/base/spinlock.cc",
        "src/base/spinlock_internal.cc",
        "src/base/atomicops-internals-x86.cc",
        "gen/config.h",
        "gen/gperftools/tcmalloc.h",
    ] + glob([
        "src/base/*.h",
        "src/*.h",
    ]),
    linkopts = [
        "-lpthread",
    ],
    deps = [
        ":logging",
        ":sysinfo",
    ],
    copts = copts,
)

cc_binary(
    name = "tcmalloc_minimal_unittest",
    srcs = [
        "src/tests/tcmalloc_unittest.cc",
        "src/tests/testutil.cc",
        "src/tests/testutil.h",
        "src/config_for_unittests.h",
        "gen/config.h",
        ],
    copts = copts,
    deps = [
        ":tcmalloc_minimal",
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
