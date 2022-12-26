load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

zstd_d_imports = ["source"]

d_source_library(
	name = "zstd_interface",
	srcs = [
		"source/zstd/c/zstd.d",
	],
	deps = ["@zstd//:zstd"],
	imports = zstd_d_imports,
)

d_library(
	name = "zstd_d",
	srcs = glob(["source/zstd/*.d"]),
	deps = [":zstd_interface"],
	imports = zstd_d_imports,
)
