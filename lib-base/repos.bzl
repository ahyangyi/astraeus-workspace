def repos():
    native.new_http_archive(
        name = "zlib",
        urls = [
                "https://zlib.net/zlib-1.2.11.tar.xz",
                ],
        sha256 = "4ff941449631ace0d4d203e3483be9dbc9da454084111f97ea0a2114e19bf066",
        strip_prefix = "zlib-1.2.11",
        build_file = str(Label("//lib-base:zlib.BUILD")),
        )

    native.new_http_archive(
        name = "googletest",
        urls = [
                "https://github.com/google/googletest/archive/release-1.8.0.tar.gz",
                ],
        sha256 = "58a6f4277ca2bc8565222b3bbd58a177609e9c488e8a72649359ba51450db7d8",
        strip_prefix = "googletest-release-1.8.0",
        build_file = str(Label("//lib-base:googletest.BUILD")),
        )

    native.http_archive(
        name = "com_github_gflags_gflags",
        urls = [
                "https://github.com/gflags/gflags/archive/v2.2.1.tar.gz",
                ],
        sha256 = "ae27cdbcd6a2f935baa78e4f21f675649271634c092b1be01469440495609d0e",
        strip_prefix = "gflags-2.2.1",
        )

    native.new_http_archive(
        name = "boost",
        urls = [
                "https://dl.bintray.com/boostorg/release/1.65.1/source/boost_1_65_1.tar.bz2",
                "https://dev-www.libreoffice.org/src/boost_1_65_1.tar.bz2",
                ],
        sha256 = "9807a5d16566c57fd74fb522764e0b134a8bbe6b6e8967b83afefd30dcd3be81",
        strip_prefix = "boost_1_65_1",
        build_file = str(Label("//lib-base:boost.BUILD")),
        )

    native.new_http_archive(
        name = "bzip2",
        urls = [
                "http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz",
                ],
        sha256 = "a2848f34fcd5d6cf47def00461fcb528a0484d8edef8208d6d2e2909dc61d9cd",
        strip_prefix = "bzip2-1.0.6",
        build_file = str(Label("//lib-base:bzip2.BUILD")),
        )

    native.new_http_archive(
        name = "xz",
        urls = [
                "https://tukaani.org/xz/xz-5.2.3.tar.xz",
                "https://sourceforge.net/projects/lzmautils/files/xz-5.2.3.tar.xz/download",
                ],
        type = "tar.xz",
        sha256 = "7876096b053ad598c31f6df35f7de5cd9ff2ba3162e5a5554e4fc198447e0347",
        strip_prefix = "xz-5.2.3",
        build_file = str(Label("//lib-base:xz.BUILD")),
        )
