package(default_visibility = ["//visibility:public"])

load("@rules_d//d:d.bzl", "d_binary", "d_docs", "d_library", "d_source_library", "d_test")

eld_d_imports = ["source"]

d_library(
    name = "elf_d",
    srcs = glob([
        "source/elf/*.d",
        "source/elf/**/*.d",
        "source/elf/**/**/*.d",
    ]),
    imports = elf_d_imports,
)

d_binary(
    name = "example",
    srcs = ["example/main.d"],
    imports = elf_d_imports,
    deps = [":elf_d"],
)
