load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repos():
    http_archive(
        name = "zlib",
        urls = [
                "https://zlib.net/zlib-1.2.11.tar.xz",
                ],
        sha256 = "4ff941449631ace0d4d203e3483be9dbc9da454084111f97ea0a2114e19bf066",
        strip_prefix = "zlib-1.2.11",
        build_file = str(Label("//lib-base:zlib.BUILD")),
        )

    http_archive(
        name = "googletest",
        urls = [
                "https://github.com/google/googletest/archive/release-1.8.0.tar.gz",
                ],
        sha256 = "58a6f4277ca2bc8565222b3bbd58a177609e9c488e8a72649359ba51450db7d8",
        strip_prefix = "googletest-release-1.8.0",
        build_file = str(Label("//lib-base:googletest.BUILD")),
        )

    http_archive(
        name = "com_github_gflags_gflags",
        urls = [
                "https://github.com/gflags/gflags/archive/v2.2.1.tar.gz",
                ],
        sha256 = "ae27cdbcd6a2f935baa78e4f21f675649271634c092b1be01469440495609d0e",
        strip_prefix = "gflags-2.2.1",
        )

    http_archive(
        name = "boost",
        urls = [
                "https://dl.bintray.com/boostorg/release/1.65.1/source/boost_1_65_1.tar.bz2",
                "https://dev-www.libreoffice.org/src/boost_1_65_1.tar.bz2",
                ],
        sha256 = "9807a5d16566c57fd74fb522764e0b134a8bbe6b6e8967b83afefd30dcd3be81",
        strip_prefix = "boost_1_65_1",
        build_file = str(Label("//lib-base:boost.BUILD")),
        )

    http_archive(
        name = "bzip2",
        urls = [
                "https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz",
                "https://fossies.org/linux/misc/bzip2-1.0.8.tar.gz",
                ],
        sha256 = "ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269",
        strip_prefix = "bzip2-1.0.8",
        build_file = str(Label("//lib-base:bzip2.BUILD")),
        )

    http_archive(
        name = "xz",
        urls = [
                "https://tukaani.org/xz/xz-5.2.4.tar.xz",
                "https://sourceforge.net/projects/lzmautils/files/xz-5.2.4.tar.xz/download",
                ],
        type = "tar.xz",
        sha256 = "9717ae363760dedf573dad241420c5fea86256b65bc21d2cf71b2b12f0544f4b",
        strip_prefix = "xz-5.2.4",
        build_file = str(Label("//lib-base:xz.BUILD")),
        )

    http_archive(
        name = "gperftools",
        urls = [
                "https://github.com/gperftools/gperftools/releases/download/gperftools-2.7/gperftools-2.7.tar.gz",
                ],
        sha256 = "1ee8c8699a0eff6b6a203e59b43330536b22bbcbe6448f54c7091e5efb0763c9",
        strip_prefix = "gperftools-2.7",
        build_file = str(Label("//lib-base:gperftools.BUILD")),
        )
