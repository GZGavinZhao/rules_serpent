load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

package(default_visibility = ["//visibility:public"])

moss_format_imports = ["source"]

d_library(
    name = "binary",
    srcs = glob([
        "source/moss/format/binary/*.d",
        "source/moss/format/binary/**/*.d",
        "source/moss/format/binary/**/**/*.d",
    ]),
    imports = moss_format_imports,
    deps = [
        "@moss_core//:core",
        "@xxhash_d//:xxhash_d",
        "@zstd_d//:zstd_d",
    ],
)

d_library(
    name = "source",
    srcs = glob([
        "source/moss/format/source/*.d",
    ]),
    imports = moss_format_imports,
    deps = [
        "@dyaml//:@dyaml",
        "@moss_core//:core",
    ],
)
