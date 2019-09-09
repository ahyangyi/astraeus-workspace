load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repos():
    http_archive(
        name = "vim",
        urls = [
                "https://github.com/vim/vim/archive/v8.1.1846.tar.gz",
                ],
        sha256 = "68de2854199a396aee19fe34c32c02db5784c76c0334d58b510266436c7529bb",
        strip_prefix = "vim-8.1.1846",
        build_file = str(Label("//app-editor:vim.BUILD")),
        )
