load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

xxhash_d_imports = ["source"]

d_library(
	name = "xxhash_d",
	srcs = glob(["source/xxhash/*.d"]),
	imports = xxhash_d_imports,
	deps = ["@xxhash//:xxhash"],
)
