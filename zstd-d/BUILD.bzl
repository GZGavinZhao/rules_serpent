package(default_visibility = ["//visibility:public"])

load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

zstd_d_imports = ["source"]

d_source_library(
    name = "zstd_interface",
    srcs = [
        "source/zstd/c/zstd.d",
    ],
    imports = zstd_d_imports,
    deps = ["@zstd"],
)

d_library(
    name = "zstd_d",
    srcs = glob(["source/zstd/*.d"]),
    imports = zstd_d_imports,
    deps = [":zstd_interface"],
)
