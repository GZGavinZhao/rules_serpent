package(default_visibility = ["//visibility:public"])

cc_library(
    name = "xxhash",
    srcs = glob(["*.c"]),
    hdrs = glob(["*.h"]),
)
