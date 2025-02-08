1.  `g clean -fd` to remote untracked files

2.  `g fetch upstream` can fetch changes from remote upstreams(metadata) without updating local branches, then you use `g merge upstream/main` to do the merge

3.  `g pull` will do fetch and also brings in the changes to the local repo

4.  submodule allows you to use another git repo from within your git repo

5.  `g submodule add git@github.com:...` will add a new submodule in the current project, creating a .gitmodules file and a new dir containing code from the submodule project

6.  the submodule is tracked as a commit, but not all the content inside of it when using git command in the parent project

7.  `g grep` is similar to `grep` but only searches git tracked files; and also `g grep` can search in previous versions, e.g `git grep foo HEAD^`; there are `g config` for `g grep` as well, e.g show line numbers in search results, supported extended regex etc

8.  HEAD^ == HEAD~1 (first ancestor of HEAD); HEAD~n (nth ancestor of HEAD); HEAD^^^ is also fine

9.  `g diff --short-stat HEAD^` can give you changed line numbers for the current change

10.  `g rebase checkout --ours(theirs) .` to accept all incoming changes (ours and theirs are flipped in this case, see `g help checkout | grep theirs`)

12. git file mode explained https://unix.stackexchange.com/questions/450480/file-permission-with-six-bytes-in-git-what-does-it-mean, similar to unix file mode, but with more bits

13. revision is a set of commits

14. Gitolite vs github, gitolite is a layer on top of git which gives access control to self-served git repos; while github is a web based platform which gives lots of features, e.g access control, pull request etc
