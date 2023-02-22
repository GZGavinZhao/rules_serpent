package(default_visibility = ["//visibility:public"])

load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

moss_core_imports = ["source"]

d_library(
    name = "cli",
    srcs = glob(["source/moss/core/cli/*.d"]),
    imports = moss_core_imports,
)

d_library(
    name = "download",
    srcs = glob(["source/moss/core/download/*.d"]),
    imports = moss_core_imports,
	deps = [":core"],
)

d_library(
    name = "core",
    srcs = glob(["source/moss/core/*.d"]),
    imports = moss_core_imports,
    deps = [
        ":cli",
    ],
)
