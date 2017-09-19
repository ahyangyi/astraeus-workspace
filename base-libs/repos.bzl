def repos():
    native.new_http_archive(
        name = "zlib_archive",
        urls = [
                "http://mirror.bazel.build/zlib.net/zlib-1.2.8.tar.gz",
                "http://zlib.net/fossils/zlib-1.2.8.tar.gz",
                ],
        sha256 = "36658cb768a54c1d4dec43c3116c27ed893e88b02ecfcb44f2166f9c0b7f2a0d",
        strip_prefix = "zlib-1.2.8",
        build_file = str(Label("//base-libs:zlib.BUILD")),
        )
