def repos():
    native.new_http_archive(
        name = "vim",
        urls = [
                "https://github.com/vim/vim/archive/v8.0.1127.tar.gz",
                ],
        sha256 = "345fc7a31bddff9369fdb68c0d3b265f69a8eadbb2a4fb1d3718084ad46a2098",
        strip_prefix = "vim-8.0.1127",
        build_file = str(Label("//applications:vim.BUILD")),
        )
