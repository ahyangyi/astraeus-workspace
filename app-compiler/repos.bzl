def repos():
  native.new_http_archive(
      name = "nasm",
      urls = [
          "https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.xz",
      ],
      sha256 = "e24ade3e928f7253aa8c14aa44726d1edf3f98643f87c9d72ec1df44b26be8f5",
      strip_prefix = "nasm-2.14.02",
      build_file = str(Label("//app-compiler:nasm.BUILD")),
  )
