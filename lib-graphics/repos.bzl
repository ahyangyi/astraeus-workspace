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
                "https://sourceforge.net/projects/libjpeg-turbo/files/1.5.2/libjpeg-turbo-1.5.2.tar.gz/download",
                ],
        type = "tar.gz",
        sha256 = "9098943b270388727ae61de82adec73cf9f0dbb240b3bc8b172595ebf405b528",
        strip_prefix = "libjpeg-turbo-1.5.2",
        build_file = str(Label("//lib-graphics:jpeg-turbo.BUILD")),
    )

    native.new_http_archive(
        name = "tiff",
        urls = [
                "http://download.osgeo.org/libtiff/tiff-4.0.8.tar.gz",
                ],
        type = "tar.gz",
        sha256 = "59d7a5a8ccd92059913f246877db95a2918e6c04fb9d43fd74e5c3390dac2910",
        strip_prefix = "tiff-4.0.8",
        build_file = str(Label("//lib-graphics:tiff.BUILD")),
    )
