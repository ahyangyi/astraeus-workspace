load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repos():
  http_archive(
      name = "nasm",
      urls = [
          "https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.xz",
      ],
      sha256 = "e24ade3e928f7253aa8c14aa44726d1edf3f98643f87c9d72ec1df44b26be8f5",
      strip_prefix = "nasm-2.14.02",
      build_file = str(Label("//app-compiler:nasm.BUILD")),
  )

  http_archive(
      name = "flex",
      urls = [
          "https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz",
      ],
      sha256 = "e87aae032bf07c26f85ac0ed3250998c37621d95f8bd748b31f15b33c45ee995",
      strip_prefix = "flex-2.6.4",
      build_file = str(Label("//app-compiler:flex.BUILD")),
  )
