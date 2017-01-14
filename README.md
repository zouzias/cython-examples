# cython-example

Example using Cypthon


# Build module

```
python setup.hello2_caller.py build_ext --inplace
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


### References

This example is based on http://telliott99.blogspot.ch/2010/12/cython-3-my-own-c-source-file.html
