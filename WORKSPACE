# Declare the local Bazel workspace.
# This is *not* included in the published distribution.
workspace(
    name = "slamdev_rules_yq",
)

load(":internal_deps.bzl", "rules_yq_internal_deps")

# Fetch deps needed only locally for development
rules_yq_internal_deps()

load("//yq:repositories.bzl", "rules_yq_dependencies", "yq_register_toolchains")

# Fetch our "runtime" dependencies which users need as well
rules_yq_dependencies()

yq_register_toolchains(
    name = "yq4_16_2",
    yq_version = "4.16.2",
)

############################################
# Gazelle, for generating bzl_library targets
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.17.2")

gazelle_dependencies()
