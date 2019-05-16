load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repos():
  http_archive(
      name = "nasm",
      urls = [
          "http://mirror.bazel.build/www.nasm.us/pub/nasm/releasebuilds/2.12.02/nasm-2.12.02.tar.bz2",
          "http://pkgs.fedoraproject.org/repo/pkgs/nasm/nasm-2.12.02.tar.bz2/d15843c3fb7db39af80571ee27ec6fad/nasm-2.12.02.tar.bz2",
      ],
      sha256 = "00b0891c678c065446ca59bcee64719d0096d54d6886e6e472aeee2e170ae324",
      strip_prefix = "nasm-2.12.02",
      build_file = str(Label("//app-compiler:nasm.BUILD")),
  )
