load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

package(default_visibility = ["//visibility:public"])

moss_imports = ["source"]

d_library(
    name = "analysis",
    imports = moss_imports,
    srcs = glob(["source/moss/deps/analysis/*.d"]),
    deps = [
        "@xxhash//:xxhash",
        "@moss_core//:core",
    ],
)

d_library(
    name = "registry",
    imports = moss_imports,
    srcs = glob(["source/moss/deps/registry/*.d"]),
    deps = [
        "@moss_core//:core",
        ":dependency",
        ":digraph",
    ],
)

d_library(
    name = "dependency",
    imports = moss_imports,
    srcs = ["source/moss/deps/dependency.d"],
    deps = [
        "@moss_core//:core",
    ],
)

d_library(
    name = "digraph",
    imports = moss_imports,
    srcs = ["source/moss/deps/digraph.d"],
)
