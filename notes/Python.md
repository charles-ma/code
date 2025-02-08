1.  `3 * [0]` is `[0,0,0]`
    
2.  `3 ** 0.5` is math.sqrt(3)
    
3.  `list1.sort() sorted(list1)` in-place vs not in-place
    
4.  tuples are immutable while lists are mutable
    
5.  virtualenv == python3 -m venv
    
6.  not, and, or
    
7.  snake_case
    
8.  for in can be used for iterables, e.g list, set, tuple, dictionary, string, range etc
    
9.  `for (x, y) in tuple_list # tuple unpack, parenthesis can be removed as well`
    
10.  `for item in dict.items() # otherwise only keys will be returned`
    
11.  `for key, value in dict.items()`
    
12.  `for value in dict.values()`
    
13.  while else
    
14.  x++ is not in python
    
15.  `f’x is {x}’ # formatted string`
    
16.  `f'{val:.5f}'`
    
17.  `pass` is for avoiding empty lines
    
18.  `list(range(0, 10, 1))`
    
19.  `for index, value in enumerate(x)` will return index and value as a tuple
    
20.  `zip()` can pair up multiple lists as for-in tuples
    
21.  `type() # a function in python`
    
22.  list comprehension is for conveniently creating new list
    
23.  `[key ** 2 for key in my_dict.keys() if key ! = 0]`
    
24.  yield will return a new generator each time the enclosing function gets called; and a generator will return yielded values each time gets invoked by next(generator)
    
25.  `def say_hello(name=’default’):`
    
26.  tuple unpacking can be used anywhere a tuple is assigned to some number of variables
    
27.  `sum()` function is a good example that needs varargs
    
28.  `def mysum(*args) # args is a tuple`
    
29.  `def mysum(**kwargs) # kwargs → keywords arguments, treated as a dictionary`
    
30.  `' '.join(text.split()[::-1]) # reverse a string word by word, default separator for split is any white space`
    
31.  `''.join(list(test)[::-1]) # reverse a string char by char`
    
32.  `lambda num: num % 2 == 0`
    
33.  lambda can be assigned to a variable
    
34.  LEGB rule, name scope, local → enclosing → global → built-in
    
35.  nonlocal v global v # access to global / enclosing variables
    
36.  class level variables: no self prefix; each class variable will have an instance level copy for each instantiation (self.v represent the instance level copy while Class.v for the original class level var); Class.v += 1 will affect all instances while self.v += 1 will only impact the current instance ([github](https://github.com/charles-ma/python_proto/blob/main/multi_inheritance_class_level_var.py))
    
37.  `class Dog(Animal) # inheritance`
    
38.  `def __str__ (self): # so that an object can be an argument for print/str`
    
39.  `def __len__(self): # so that an object can be an argument for len`
    
40.  `def __del__(self): # del a`
    
41.  port 22 is ssh
    
42.  __init __.py is the indicator of a package vs a common directory
    
43.  `if __name __ == ‘__ main __’` # whether code is invoked as main; python doesn’t have a main function
    
44.  try except else finally
    
45.  python has a built in unittest module
    
46.  python decorator is a wrapper function; and after applied with the @ syntax, the wrapped version of the original function will be returned ([github](https://github.com/charles-ma/python_proto/blob/main/multi_custom_decorator.py))
    
47.  reflection is needed for writing frameworks
    
48.  generators are designed as to facilitating iterating thru a gigantic set of elements, e.g 0 ~ 1 m
    
49.  `iter()` can convert an obj e.g string into a generator so that we can use `next()` to iterate thru
    
50.  generator comprehension: use () instead of [] in list comprehension
    
51.  `from collections import Counter, defaultdict` `# attention to the case`
    
52.  `defaultdict(lambda: 0)` is a dictionary providing default values when key not exists
    
53.  `namedtuple` is a lot like a class
    
54.  `random.randint()` will give back same value if `random.seed()` is called at the start
    
55.  `import pdb` allows one to debug python code; `pdb.set_trace()`
    
56.  python source files can be saved with different encodings, editors can change the encodings
    
57.  useful string methods: `s.count('c')` `s.find('c')` `s.isalnum()` `s.isalpha()` `s.lower()` `s.islower()`
    
58.  vimdiff, diff, emacs diff mode can show diffs btw files
    
59.  dict comprehension `{x:x ** 2 for x in range(10)}`
    
60.  `li.extend(another_list)` extend a list with another one
    
61.  pytest features: a. testcase discovery (test_*.py or *_[test.py](http://test.py)) b. exception check c. TestClass has to be prefixed with ‘Test’ and test funcs with ‘test_’
    
62.  xdist plugin supports run parallelization
    
63.  pytest supports unique tmp directory for each test
    
64.  `pytest —fixtures` to list all built-in fixtures, e.g tmpdir, cache btw sessions etc
    
65.  pytest supports test markers(decorations) to add metadata to test functions
    
66.  pytest.init to add customized markers
    
67.  `pytest --durations=10 --durations-min=1.0` to get test durations
    
68.  pytest supports fixture injection
    
69.  autouse fixture will be executed before each test, like a setup for a testing suite
    
70.  pytest supports fixture scoping (expensive ones can be on higher level, e.g package, session rather than function), and even dynamic scoping (scoping based on run time eval of functions, e.g functions to read configs); and fixture overriding
    
71.  pytest supports fixture teardown, e.g using yield so that an object would be returned, used and then destroyed by statements after yield (prone to exception interruption tho)
    
72.  fixture supports the context of the requesting test function to be passed in as a request object
    
73.  conditional skip of tests based on markers
    
74.  parameterized test function based on marker, e.g
    

```python
@pytest.mark.parametrize("test_input,expected", [("3+5", 8), ("2+4", 6), ("6*9", 42)])
def test_eval(test_input, expected):
    assert eval(test_input) == expected
```

1.  monkey patch can be used to patch function return values(mock function return values); patch system envs etc
    
2.  pytest supports retry
    
3.  pickle can be used to dump models
    
4.  `import` will execute commands in the imported scripts, just like shell
    
5.  python has tools to detect dependency hells; and if libs have overlapping dependencies with one another, by specifying the acceptable range, python package manager will install an overlapped version of the dependency; but there is no way to solve a serious dependency hell except rewriting code
    
6.  pip-compile can take [requirements.in](http://requirements.in) and generate requirements.txt
    
7.  if you only specify first level of dependencies in .txt, `pip install -r requirements.txt` might end up using different versions of transient dependencies on different platforms at different times; if you want to lock down those requirements, use *.in to generate *.txt; also using *.in can automatically clean unused dependencies
    
8.  python packaging, sdist (source distribution, not pre built, user has to build them) vs bdist(binary distribution, pre built, need to provide binaries for various platforms, like wheels)
    
9.  PyPI, python cheese shop
    
10.  `python -m package_name` to invoke a package as main
    
11.  `[MANIFEST.in](<http://MANIFEST.in>)` can specify additional files you want to include in the package to be published, besides source code files and README
    
12.  editable install allows you to install package locally and able to edit it as well (using soft links)
    
13.  `site-packages` is the folder python stores all dependencies
    
14.  `python -m pip install -e .` to install packages in the current dir; will look for a `pyproject.toml` config
    
15.  when packaging code, you can specify a new command (e.g pytest) to be created so that a main function in one of your source code files would be invoked
    
16.  `python -c "import sys; print(sys.path)"` to find python env vars
    
17.  bazel build can generate source code e.g from idls, but then publishing python package, all those files have to be generated, and the packaging tool only package / build the source files
    
18.  python sdist includes all extension modules code as well (other compiled langs, C, C++ etc) which needs to be built on user side
    
19.  wheels are generally smaller is size and avoid building process than sdist
    
20.  wheels don’t include .pyc files tho it is a built dist
    
21.  if use sdist, you can apply patches on the code before using it, essentially similar to pull code from a repo and then install it (put code in PYTHONPATH)
    
22.  __ name__ is the module name; when invoked directly by an interpreter, it will == ‘__ main__’
    
23.  `from * import ** as *** # * is module; ** is obj` `import * as ** # * is module`

24. object has a `get(key)` method to get an attr, will return `None` if key not existent

1. add paths to conda env https://stackoverflow.com/questions/37006114/anaconda-permanently-include-external-packages-like-in-pythonpath

2. id(object) returns a unique identifier of an object, can be used to detect whether two objects are actually the same (same address)

3. 
