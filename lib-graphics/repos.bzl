def repos():
  native.new_http_archive(
      name = "png",
      urls = [
          "http://ftp-osl.osuosl.org/pub/libpng/src/libpng16/libpng-1.6.32.tar.xz",
      ],
      sha256 = "c918c3113de74a692f0a1526ce881dc26067763eb3915c57ef3a0f7b6886f59b",
      strip_prefix = "libpng-1.6.32",
      build_file = str(Label("//lib-graphics:png.BUILD")),
  )
