<!-- Generated with Stardoc: http://skydoc.bazel.build -->

# YQ Rules

<a id="#yq_eval"></a>

## yq_eval

<pre>
yq_eval(<a href="#yq_eval-name">name</a>, <a href="#yq_eval-expression">expression</a>, <a href="#yq_eval-indent">indent</a>, <a href="#yq_eval-no_doc">no_doc</a>, <a href="#yq_eval-output_format">output_format</a>, <a href="#yq_eval-srcs">srcs</a>)
</pre>

Defines a yq eval execution.

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="yq_eval-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="yq_eval-expression"></a>expression |  Expression to evaluate   | String | optional | "" |
| <a id="yq_eval-indent"></a>indent |  Indent level for output   | Integer | optional | 2 |
| <a id="yq_eval-no_doc"></a>no_doc |  Don't print document separators (---)   | Boolean | optional | False |
| <a id="yq_eval-output_format"></a>output_format |  Output format type   | String | optional | "yaml" |
| <a id="yq_eval-srcs"></a>srcs |  Files to apply expression to.   | <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a> | optional | [] |


<a id="#yq_eval_all"></a>

## yq_eval_all

<pre>
yq_eval_all(<a href="#yq_eval_all-name">name</a>, <a href="#yq_eval_all-expression">expression</a>, <a href="#yq_eval_all-indent">indent</a>, <a href="#yq_eval_all-no_doc">no_doc</a>, <a href="#yq_eval_all-output_format">output_format</a>, <a href="#yq_eval_all-srcs">srcs</a>)
</pre>

Defines a yq eval-all execution.

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="yq_eval_all-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="yq_eval_all-expression"></a>expression |  Expression to evaluate   | String | optional | "" |
| <a id="yq_eval_all-indent"></a>indent |  Indent level for output   | Integer | optional | 2 |
| <a id="yq_eval_all-no_doc"></a>no_doc |  Don't print document separators (---)   | Boolean | optional | False |
| <a id="yq_eval_all-output_format"></a>output_format |  Output format type   | String | optional | "yaml" |
| <a id="yq_eval_all-srcs"></a>srcs |  Files to apply expression to.   | <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a> | optional | [] |


