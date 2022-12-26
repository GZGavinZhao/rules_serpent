load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

dyaml_imports = ["source"]

d_library(
    name = "dyaml",
    srcs = glob(["source/dyaml/*.d"]),
    imports = dyaml_imports,
)
