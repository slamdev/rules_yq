# Bazel rules for [yq](https://github.com/mikefarah/yq)

## Installation

Include this in your WORKSPACE file:

```starlark
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "slamdev_rules_yq",
    url = "https://github.com/slamdev/rules_yq/releases/download/0.0.0/slamdev_rules_yq-v0.0.0.tar.gz",
    sha256 = "",
)

load("@slamdev_rules_yq//yq:deps.bzl", "yq_register_toolchains", "rules_yq_dependencies")

rules_yq_dependencies()

yq_register_toolchains(
    name = "yq4_16_2",
    yq_version = "4.16.2",
)
```

> note, in the above, replace the version and sha256 with the one indicated
> in the release notes for rules_yq.
