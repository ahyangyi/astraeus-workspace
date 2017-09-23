def repos():
    native.new_http_archive(
        name = "imagemagick",
        urls = [
            "https://launchpad.net/imagemagick/main/6.9.9-14/+download/ImageMagick-6.9.9-14.tar.gz",
        ],
        sha256 = "7a129d51fdb332675a48e13651b438595f6d72cef199bf807c477b1161920043",
        strip_prefix = "ImageMagick-6.9.9-14",
        build_file = str(Label("//app-graphics:imagemagick.BUILD")),
    )
