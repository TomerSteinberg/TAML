workspace(name = "my_cpp_project")

# If you depend on external libraries (e.g. gRPC, Abseil, GoogleTest), declare them here.
# For example, to pull in GoogleTest:
http_archive(
    name = "com_google_googletest",
    urls = ["https://github.com/google/googletest/archive/release-1.12.1.tar.gz"],
    strip_prefix = "googletest-release-1.12.1",
)
load("@com_google_googletest//:bazel/repo_rules.bzl", "gtest_repositories")
gtest_repositories()