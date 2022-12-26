libzstd_includes = [
	"lib",
	"lib/common",
	"lib/compress",
	"lib/decompress",
	"lib/dictBuilder",
]

libzstd_srcs = glob([
	"lib/common/*.c",
	"lib/compress/*.c",
	"lib/decompress/*.c",
	"lib/decompress/*.S",
	"lib/dictBuilder/*.c",
])

libzstd_hdrs = glob([
	"lib/*.h",
	"lib/common/*.h",
	"lib/compress/*.h",
	"lib/decompress/*.h",
	"lib/dictBuilder/*.h",
])

cc_library(
	name = "zstd",
	hdrs = libzstd_hdrs,
	srcs = libzstd_srcs,
	includes = libzstd_includes,
	# Don't care about flags for now.
	defines = [
		"ZSTD_MULTITHREAD",
	],
)
