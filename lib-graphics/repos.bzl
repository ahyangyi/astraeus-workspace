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

    native.new_http_archive(
        name = "gif",
        urls = [
            "http://mirror.bazel.build/ufpr.dl.sourceforge.net/project/giflib/giflib-5.1.4.tar.gz",
            "http://pilotfiber.dl.sourceforge.net/project/giflib/giflib-5.1.4.tar.gz",
        ],
        sha256 = "34a7377ba834397db019e8eb122e551a49c98f49df75ec3fcc92b9a794a4f6d1",
        strip_prefix = "giflib-5.1.4",
        build_file = str(Label("//lib-graphics:gif.BUILD")),
    )
