<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Declare runtime dependencies

These are needed for local dev, and users must install them as well.
See https://docs.bazel.build/versions/main/skylark/deploying.html#dependencies


<a id="#yq_repositories"></a>

## yq_repositories

<pre>
yq_repositories(<a href="#yq_repositories-name">name</a>, <a href="#yq_repositories-platform">platform</a>, <a href="#yq_repositories-repo_mapping">repo_mapping</a>, <a href="#yq_repositories-yq_version">yq_version</a>)
</pre>

TODO

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="yq_repositories-name"></a>name |  A unique name for this repository.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| <a id="yq_repositories-platform"></a>platform |  -   | String | required |  |
| <a id="yq_repositories-repo_mapping"></a>repo_mapping |  A dictionary from local repository name to global repository name. This allows controls over workspace dependency resolution for dependencies of this repository.&lt;p&gt;For example, an entry <code>"@foo": "@bar"</code> declares that, for any time this repository depends on <code>@foo</code> (such as a dependency on <code>@foo//some:target</code>, it should actually resolve that dependency within globally-declared <code>@bar</code> (<code>@bar//some:target</code>).   | <a href="https://bazel.build/docs/skylark/lib/dict.html">Dictionary: String -> String</a> | required |  |
| <a id="yq_repositories-yq_version"></a>yq_version |  -   | String | required |  |


<a id="#rules_yq_dependencies"></a>

## rules_yq_dependencies

<pre>
rules_yq_dependencies()
</pre>





<a id="#yq_register_toolchains"></a>

## yq_register_toolchains

<pre>
yq_register_toolchains(<a href="#yq_register_toolchains-name">name</a>, <a href="#yq_register_toolchains-kwargs">kwargs</a>)
</pre>

Convenience macro for users which does typical setup.

- create a repository for each built-in platform like "yq_linux_amd64" -
  this repository is lazily fetched when yq is needed for that platform.
- TODO: create a convenience repository for the host platform like "yq_host"
- create a repository exposing toolchains for each platform like "yq_platforms"
- register a toolchain pointing at each platform
Users can avoid this macro and do these steps themselves, if they want more control.


**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="yq_register_toolchains-name"></a>name |  base name for all created repos, like "yq0_6_1"   |  none |
| <a id="yq_register_toolchains-kwargs"></a>kwargs |  passed to each yq_repositories call   |  none |


