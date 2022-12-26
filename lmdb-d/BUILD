load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

lmdb_d_imports = ["source"]

d_library(
    name = "lmdb_d",
    srcs = [
		"source/lmdb/binding.d",
		"source/lmdb/macros.d",
	],
	deps = ["@lmdb//:lmdb"],
	imports = lmdbd_imports,
)

d_test(
	name = "lmdb_d_test",
	srcs = ["source/lmdb/package.d"],
	deps = [":lmdb_d"],
	imports = lmdbd_imports,
)

d_docs(
	name = "lmdb_d_docs",
	dep = ":lmdb_d",
)
