# cython-examples [![Build Status](https://travis-ci.org/zouzias/cython-examples.svg?branch=master)](https://travis-ci.org/zouzias/cython-examples)

Examples calling C code from Python via Cython.

* dot: Inner product between two vectors
* multiply: scale vector by a given constant
* scipy-sparse-frob: Frobenius norm of sparse matrices (SciPy)

## Build module

```
cd hello-world
./build-module.sh
```

You may need to install cython, i.e., `pip install cython` or `pip3`

## Run module

Start python and run the module as follows

```
Python 2.7.12 (default, Jun 29 2016, 14:05:02) 
>>> import hello_caller
>>> hello_caller.hello()
Hello world!
>>> 
```
