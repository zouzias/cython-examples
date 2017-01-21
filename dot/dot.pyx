"""
dot.pyx

simple cython test of accessing numpy arrays's data and compute the dot product

the C function: c_dot computes the inner product between two 1-d arrays.

"""

import cython

# import both numpy and the Cython declarations for numpy
import numpy as np
cimport numpy as np

# declare the interface to the C code
cdef extern double c_dot (double* a, double* b, int m, int n)

@cython.boundscheck(False)
@cython.wraparound(False)
def dot(np.ndarray[double, ndim=1, mode="c"] a not None, np.ndarray[double, ndim=1, mode="c"] b not None):
    """
    dot (a, b, sz)

    Takes a numpy arry as input, and multiplies each elemetn by value, in place

    param: array -- a 1-d numpy array of np.float64
    param: array -- a 1-d numpy array of np.float64
    param: sz -- sz of input arrays

    """
    cdef int m, n

    m, n = a.shape[0], b.shape[0]

    # TODO: Check if array lengths are equal here

    dot = c_dot (&a[0], &b[0], m, n)

    return dot
