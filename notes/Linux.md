1.  `set` is used to set/unset values of shell options which can influence the execution of a shell script, `set -x` print commands and arguments as they are executed `bash -c 'help set'`
    
2.  block storage → hard drive, you can put a file system onto it; object storage → storing objects, providing APIs to access them; distributed file system → HDFS etc
    
3.  `printenv` to list all envs
    
4.  `env` if used without argument, will print a list of all environment variables; `-i` to run a command without env; `-u` to remove variable from env; `#! /usr/bin/env interpreter (e.g bash)` to ensure using the interpreter in the user’s $PATH; zsh will auto inject the env part
    
5.  `#!` is called Shebang, which tells a unix like system how to interpret an executable file; if we try to run a text file, `execve` expects the file starts with a shebang followed by a path to the interpreter that will be used to interpret rest of the script; you can have a python script starting with #! python which you can run directly without explicitly calling python [filename]
    
6.  `sh` is a symbolic link to an sh-compatible implementation of sh (shell command language, [Bourne Shell](https://en.wikipedia.org/wiki/Bourne_shell)), in most cases, it is bash; but using `sh` can secure portability
    
7.  `echo` can take multiple input; `echo hello world` will out put `hello world` with a single space in between them
    
8.  `myvar=123 var1=$myvar var2="$myvar" var3='$myvar' # var1 = var2 != var3; var3 is string literal $myvar`
    
9.  `myvar=123` no spaces btw = and operands, otherwise how do you do `myvar = 123 # invocation of a program myvar with params = and 123`
    
10.  in sh, every var is a string; but programs will do type check when you use them as arguments
    
11.  use single quoted string when you want to include literal $ sign in it
    
12.  `. ./script` is equal to `source ./script`
    
13.  `${myvar}_test`
    
14.  `${myvar:-$(date)}` if myvar is null, use $(date) as value `#parameter expansion` and `:=` will set the var value as well
    
15.  `${myvar:?msg}` use myvar value if myvar exists, otherwise complain using `msg` if msg not provided, using default msg
    
16.  `* # all files under current dir`
    
17.  `*txt # all files matches *txt`
    
18.  `for i in 1 2 3 do ... done` # need newlines
    
19.  `while [] do done` # newlines
    
20.  `while read inputtext` # no [] needed since it is not a = or ≠ check
    
21.  `read` should be followed by a var without $
    
22.  `$a=1` is not valid when a is a var
    
23.  `while :` infinite loop
    
24.  `ls {myfile*,sh*}` no space after ,
    
25.  zsh / dash / bash all Bourne Shell
    
26.  `=` for string comparison while `-eq, -lt, -gt, -le, -ge` for int(number) comp
    
27.  `if [...] then ... elif ... then ... else ... fi` # newlines
    
28.  `;` can join two lines that should have been separated
    
29.  `\\` at end of line tells next line is the extension of current one
    
30.  [] && [] && … can be used to concat conditions
    
31.  `[ -n "$X" ]` can be used to decide whether $X is of non zero length; since `[` is `test`
    
32.  `if [ ... ]` = `if test ...`
    
33.  `test` `[` returns a program exit code to tell if the test passes
    
34.  `echo $?` can print the exit code of last executed command and `0` is good
    
35.  null device will discard anything written into it `/dev/null`
    
36.  `stdout file descriptor = 1; stderr file descriptor = 2`
    
37.  `ls > /dev/null 2>&1` redirect stdout to null device and redirect stderr to stdout
    
38.  `&1` indicates 1 is a fd rather than a file name
    
39.  `ls 2> /dev/null` redirect stderr to null device
    
40.  param after > doesn’t need to follow it immediately, but param before > needs to be right before it otherwise 1 will be defaulted (and param would be included in the command before it)
    
41.  `null device(/dev/null); stdout &1; stderr &2;` file; stream; stream
    
42.  “” $ will be interpreted as vars; ‘’ $ will be treated literally; no quotes, $ may or may not be treated as vars, e.g test -n $x will never give a non-zero, since $x will be treated as a literal string (since after -n, test expects a string)
    
43.  `$0` base name of the program as it was called; `$1 ... $9` params with which the script was called; `$@` all params from 1 to …; `$*` is similar, doesn’t preserve any white space and quoting; `$#` the number of params (except `$0`)
    

45.  they are using the output of a command as command line params for another program; while `|` is piping stdout / stdin
    
46.  `shift` can help with if # of params > 10
    
47.  `$$` pid of the running script; `$!` pid of the last run background process
    
48.  `echo, which ...` are shell builtin while `grep, expr ...` are utilities
    
49.  shell script can be imported as a lib by `. ./myscript.sh` (sourcing the script)
    
50.  `function c() {}` or `function c {}` or `c() {}` to define a function
    
51.  shell doesn’t have var scope except for params, e.g $0
    
52.  `>` redirect output to another stream (stdout stderr file etc); operands should be files (files descriptors)
    
53.  `$0` stays the same within a script call, even when inside functions
    
54.  no `#! sh` in a [lib.sh](http://lib.sh)
    
55.  shell procedures should return int value (0 ~ 255), 0 is good
    

```bash
cat > out.txt << EOF
some text
and other text
EOF
```

1.  egrep = extended grep; with richer regex support

2.  direnv will load a shell script (direnv script, .envrc) when user enters the directory; and direnv has some pre-defined stdlib procedures to help with common functionalities, e.g PATH_add

3.  `where / whereis / which / type`

4.  `readlink` to print the real path behind a symbolic link

5.  `find . -name "*integration*"` need the double quote to make the fuzzy search work

6.  IANA timezone database is distributed with OS on hard disk; languages may read timezone info from OS or have db built in as well

7. memory rss means the memory taken up by processes in the main memory, not swap / filesystem

8. cpu utilization could > 100%, since normally it is measured against one core and with cpu boosting frequency, even one core could performance > 100%, e.g jumping from 2.5GHz to 3GHz

9. 
