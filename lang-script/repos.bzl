load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repos():
    http_archive(
        name = "lua",
        urls = [
                "http://www.lua.org/ftp/lua-5.3.4.tar.gz",
                ],
        sha256 = "f681aa518233bc407e23acf0f5887c884f17436f000d453b2491a9f11a52400c",
        strip_prefix = "lua-5.3.4",
        build_file = str(Label("//lang-script:lua.BUILD")),
        )

    http_archive(
        name = "python35",
        urls = [
                "https://www.python.org/ftp/python/3.5.7/Python-3.5.7.tar.xz",
                ],
        sha256 = "285892899bf4d5737fd08482aa6171c6b2564a45b9102dfacfb72826aebdc7dc",
        strip_prefix = "Python-3.5.7",
        build_file = str(Label("//lang-script:python.BUILD")),
        )
    http_archive(
        name = "python36",
        urls = [
                "https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tar.xz",
                ],
        sha256 = "5e2f5f554e3f8f7f0296f7e73d8600c4e9acbaee6b2555b83206edf5153870da",
        strip_prefix = "Python-3.6.9",
        build_file = str(Label("//lang-script:python.BUILD")),
        )
