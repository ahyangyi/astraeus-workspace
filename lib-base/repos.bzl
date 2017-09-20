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
