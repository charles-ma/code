1.  WORKSPACE file can identify a dir as a bazel workspace (as __[init__.py](http://init.py) in python)
    
2.  BUILD file is mapped 1:1 to a package
    
3.  When bazel builds the project, all source code and dependencies must be in the same workspace (it is possible to cross workspace tho)
    
4.  each instance of a build rule is called a target
    
5.  `bazel query  --notool_deps --noimplicit_deps "deps(//:ProjectRunner)" --output graph` to generate dependency graphs, and [](http://www.webgraphviz.com/)[http://www.webgraphviz.com/](http://www.webgraphviz.com/) to visualize the graph
    
6.  targets are only visible to targets within same file; otherwise need to add visibility explicitly
    
7.  `//:` to refer to targets at root level; `:` to refer to targets in the same BUILD file
    
8.  why we need a build system (bazel, make etc): simple language tools not able to perform complex tasks e.g access source code on other parts of the file system; multiple languages needed to build a system (one language tool not enough); manage external dependencies; system crashed, all deps need to be reimported;
    
9.  task based vs artifact based build system
    
10.  task based system model workflow as a sequence of tasks, each task is a script can execute any logic and tasks depend on each other; a config file (xml) is used to represent dependencies and task definitions, task can contain predefined and customized commands
    
11.  task based, hard to parallelize, lack of ways to say tasks are independent, difficult to do incremental build (not knowing whether a task changed / finished etc)
    
12.  build system pros and cons [](https://bazel.build/basics)[https://bazel.build/basics](https://bazel.build/basics)
    
13.  artifact based: do something; task based: how to do something
    
14.  every target has name / srcs / deps
    
15.  bazel performs a topological sort to build a target (and its dependencies)
    
16.  bazel provides central place to configure tools, e.g which compiler to use; rather than letting user use whatever they want
    
17.  @ remote repo
    
18.  `bazel query :all` bazel query loads all BUILD files but not analyze targets (e.g only execute global methods)
    
19.  `bazel build :all`
    
20.  Turing complete language
    
21.  bazel & bazel build farm can be used together to support distributed build
    
22.  remote cache hit is shown after each build
    
23.  `ctx.attr` to refer to attributes defined in `attrs` field of `rule`
    
24.  `attr.string()` can be used as a type
    
25.  attributes that start with an underscore (when define rules) are private and cannot be set in a BUILD file
    
26.  bazel run, remote cache hit vs internal vs processwrapper-sandbox (sandbox is a 3rd party program to manage processes)
    
27.  bazel command is run in bazel client; bazel server is a server deamon that will remain active across some period of time, e.g 3 hours, to share cached BUILD files, dependency graphs etc between builds; server is per workspace per user
    
28.  buildifier is used to format BUILD files which follow the same formatting rules as Go
    
29.  all targets of a project is path relative to the `WORKSAPCE` file; `WORKSPACE` can be used to add new remote repos and new rules for compiling in different languages
    
30.  java_binary; java_library; java_import; java_test
    
31.  `bazel build //dir:all` build all targets under dir; `bazel build //dir/...` build all targets under dir and its subdirs, `...` is not a target, so avoid `:`
    
32.  `bazel clean` to clear everything
    
33.  `load("//local/path/to/my:file.bzl", "symbol_to_load")`
    
34.  `@bazel_tools` is a remote (built-in) utility repo for rules, including e.g `http_archive`
    
35.  downloaded repos will be available in `bazel-your-repo` directory
    
36.  `http_archive` is a rule to pull down and retrieve a compressed bazel repo, so that its targets are available locally
    

```python
http_archive (
	name = "remote compressed repo name",
	url = "<http://remote.url/path/to/repo/repo.zip>"
)
```

1.  `load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")` to pull down a git repo at a specified commit
    
2.  `load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")`
    
3.  `macro` produces rule invocations (targets) as well; not generating rules; but can save some duplicate work when creating multiple targets
    
4.  `native` can only be used in `.bzl` files and it is referencing the native module where all native rules (rules don’t need to be loaded to use) can be found
    
5.  `label resolution` in macro is by default relative to the BUILD file location where the macro is called; but by using the `Label` procedure, the path can remain relative to the macro repo [](https://bazel.build/extending/macros)[https://bazel.build/extending/macros](https://bazel.build/extending/macros)
    
6.  bazel http_archive can take a param (patches), to apply patches to an external dependency (rule dependency)
    
7.  `bazel test //:mytest --test_env=MYENV=myvalue` to pass env var to testing