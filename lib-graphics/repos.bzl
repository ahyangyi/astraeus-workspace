load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repos():
    http_archive(
        name = "png",
        urls = [
            "http://prdownloads.sourceforge.net/libpng/libpng-1.6.35.tar.xz?download",
        ],
        type = "tar.xz",
        sha256 = "23912ec8c9584917ed9b09c5023465d71709dce089be503c7867fec68a93bcd7",
        strip_prefix = "libpng-1.6.35",
        build_file = str(Label("//lib-graphics:png.BUILD")),
    )

    http_archive(
        name = "gif",
        urls = [
            "http://mirror.bazel.build/ufpr.dl.sourceforge.net/project/giflib/giflib-5.1.4.tar.gz",
            "http://pilotfiber.dl.sourceforge.net/project/giflib/giflib-5.1.4.tar.gz",
        ],
        sha256 = "34a7377ba834397db019e8eb122e551a49c98f49df75ec3fcc92b9a794a4f6d1",
        strip_prefix = "giflib-5.1.4",
        build_file = str(Label("//lib-graphics:gif.BUILD")),
    )

    http_archive(
        name = "jpeg",
        urls = [
                "https://sourceforge.net/projects/libjpeg-turbo/files/2.0.3/libjpeg-turbo-2.0.3.tar.gz/download",
                ],
        type = "tar.gz",
        sha256 = "4246de500544d4ee408ee57048aa4aadc6f165fc17f141da87669f20ed3241b7",
        strip_prefix = "libjpeg-turbo-2.0.3",
        build_file = str(Label("//lib-graphics:jpeg-turbo.BUILD")),
    )

    http_archive(
        name = "tiff",
        urls = [
                "http://download.osgeo.org/libtiff/tiff-4.0.9.tar.gz",
                ],
        type = "tar.gz",
        sha256 = "6e7bdeec2c310734e734d19aae3a71ebe37a4d842e0e23dbb1b8921c0026cfcd",
        strip_prefix = "tiff-4.0.9",
        build_file = str(Label("//lib-graphics:tiff.BUILD")),
    )
