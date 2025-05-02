load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _xtensor_repo_impl(ctx):
    http_archive(
        name = "xtl",
        url = "https://github.com/xtensor-stack/xtl/archive/refs/tags/0.7.5.tar.gz",
        strip_prefix = "xtl-0.7.5",
        build_file_content = """
cc_library(
    name = "xtl",
    hdrs = glob(["include/xtl/**/*.hpp"]),
    includes = ["include"],
    visibility = ["//visibility:public"],
)
""",
    )

    http_archive(
        name = "xtensor",
        url = "https://github.com/xtensor-stack/xtensor/archive/refs/tags/0.24.6.tar.gz",
        strip_prefix = "xtensor-0.24.6",
        build_file_content = """
cc_library(
    name = "xtensor",
    hdrs = glob(["include/xtensor/**/*.hpp"]),
    includes = ["include"],
    deps = ["@xtl//:xtl"],
    visibility = ["//visibility:public"],
)
""",
    )

xtensor = module_extension(
    implementation = _xtensor_repo_impl,
    tag_classes = {},
)