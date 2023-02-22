package(default_visibility = ["//visibility:public"])

load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

lmdb_d_imports = ["source"]

d_library(
    name = "lmdb_d",
    srcs = [
        "source/lmdb/binding.d",
        "source/lmdb/macros.d",
    ],
    imports = lmdbd_imports,
    deps = ["@lmdb"],
)

d_test(
    name = "lmdb_d_test",
    srcs = ["source/lmdb/package.d"],
    imports = lmdbd_imports,
    deps = [":lmdb_d"],
)

d_docs(
    name = "lmdb_d_docs",
    dep = ":lmdb_d",
)
