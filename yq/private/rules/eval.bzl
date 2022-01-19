"yq_eval rule"

load("@bazel_skylib//lib:collections.bzl", "collections")
load("@bazel_skylib//lib:shell.bzl", "shell")

_EVAL_DOC = "Defines a yq eval execution."
_EVAL_ALL_DOC = "Defines a yq eval-all execution."

_ATTRS = {
    "srcs": attr.label_list(
        doc = "Files to apply expression to.",
        allow_files = True,
    ),
    "expression": attr.string(
        doc = "Expression to evaluate",
    ),
    "indent": attr.int(
        doc = "Indent level for output",
        default = 2,
    ),
    "no_doc": attr.bool(
        doc = "Don't print document separators (---)",
    ),
    "output_format": attr.string(
        doc = "Output format type",
        default = "yaml",
        values = ["yaml", "json", "props"],
    ),
}

def _impl_eval(ctx):
    return _impl(ctx, "eval")

def _impl_eval_all(ctx):
    return _impl(ctx, "eval-all")

def _impl(ctx, cmd):
    out = ctx.actions.declare_file(ctx.label.name + "." + ctx.attr.output_format)

    command = [ctx.var["YQ_BIN"], cmd, shell.quote(ctx.attr.expression)]
    for f in ctx.files.srcs:
        command.append(f.path)
    if ctx.attr.no_doc:
        command.append("--no-doc")
    command.append("--output-format={}".format(ctx.attr.output_format))
    command.append("--indent={}".format(ctx.attr.indent))

    ctx.actions.run_shell(
        inputs = ctx.files.srcs,
        outputs = [out],
        arguments = [out.path],
        tools = ctx.toolchains["@slamdev_rules_yq//yq:toolchain_type"].default.files,
        command = " ".join(command) + " > $1",
        mnemonic = "YQ",
        progress_message = "YQ to %{output}",
    )

    return [DefaultInfo(files = depset([out]), runfiles = ctx.runfiles(files = [out]))]

eval = rule(
    doc = _EVAL_DOC,
    implementation = _impl_eval,
    attrs = _ATTRS,
    provides = [DefaultInfo],
    toolchains = ["@slamdev_rules_yq//yq:toolchain_type"],
)

eval_all = rule(
    doc = _EVAL_ALL_DOC,
    implementation = _impl_eval_all,
    attrs = _ATTRS,
    provides = [DefaultInfo],
    toolchains = ["@slamdev_rules_yq//yq:toolchain_type"],
)
