def repos():
    native.new_http_archive(
        name = "imagemagick",
        urls = [
            "https://launchpad.net/imagemagick/main/6.9.10-5/+download/ImageMagick-6.9.10-5.tar.gz",
        ],
        sha256 = "fab19a32821b9a47bd3f3503e2527580e0e1dba15e0847702a2ec6827b86c8b0",
        build_file = str(Label("//app-graphics:imagemagick.BUILD")),
    )
