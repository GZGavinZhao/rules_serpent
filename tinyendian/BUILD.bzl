load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

package(default_visibility = ["//visibility:public"])

d_library(
    name = "tinyendian",
    srcs = glob(["source/*.d"]),
)
