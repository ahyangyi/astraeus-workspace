def repos():
    native.new_http_archive(
        name = "vim",
        urls = [
                "https://github.com/vim/vim/archive/v8.1.0146.tar.gz",
                ],
        sha256 = "6e4e72e167eb5a3ed643793857d84f5dc3cbcbc7c3ff08b8e1e6cc6b9f9d1223",
        strip_prefix = "vim-8.1.0146",
        build_file = str(Label("//app-editor:vim.BUILD")),
        )
