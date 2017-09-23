def touch(paths):
    for path in paths:
        native.genrule(
            name = "gen-file_{}".format(path),
            outs = [
                path,
                ],
            cmd = "touch $@",
            )
