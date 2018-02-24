def repos():
    native.new_http_archive(
        name = "png",
        urls = [
            "http://ftp-osl.osuosl.org/pub/libpng/src/libpng16/libpng-1.6.34.tar.xz",
            "http://prdownloads.sourceforge.net/libpng/libpng-1.6.34.tar.xz?download",
        ],
        type = "tar.xz",
        sha256 = "2f1e960d92ce3b3abd03d06dfec9637dfbd22febf107a536b44f7a47c60659f6",
        strip_prefix = "libpng-1.6.34",
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

    native.new_http_archive(
        name = "jpeg",
        urls = [
                "https://sourceforge.net/projects/libjpeg-turbo/files/1.5.3/libjpeg-turbo-1.5.3.tar.gz/download",
                ],
        type = "tar.gz",
        sha256 = "b24890e2bb46e12e72a79f7e965f409f4e16466d00e1dd15d93d73ee6b592523",
        strip_prefix = "libjpeg-turbo-1.5.3",
        build_file = str(Label("//lib-graphics:jpeg-turbo.BUILD")),
    )

    native.new_http_archive(
        name = "tiff",
        urls = [
                "http://download.osgeo.org/libtiff/tiff-4.0.9.tar.gz",
                ],
        type = "tar.gz",
        sha256 = "6e7bdeec2c310734e734d19aae3a71ebe37a4d842e0e23dbb1b8921c0026cfcd",
        strip_prefix = "tiff-4.0.9",
        build_file = str(Label("//lib-graphics:tiff.BUILD")),
    )
