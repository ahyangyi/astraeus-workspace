def repos():
    native.new_http_archive(
        name = "zlib_archive",
        urls = [
                "https://zlib.net/zlib-1.2.11.tar.xz",
                ],
        sha256 = "4ff941449631ace0d4d203e3483be9dbc9da454084111f97ea0a2114e19bf066",
        strip_prefix = "zlib-1.2.11",
        build_file = str(Label("//lib-base:zlib.BUILD")),
        )
