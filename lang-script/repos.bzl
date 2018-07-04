def repos():
    native.new_http_archive(
        name = "lua",
        urls = [
                "http://www.lua.org/ftp/lua-5.3.4.tar.gz",
                ],
        sha256 = "f681aa518233bc407e23acf0f5887c884f17436f000d453b2491a9f11a52400c",
        strip_prefix = "lua-5.3.4",
        build_file = str(Label("//lang-script:lua.BUILD")),
        )
