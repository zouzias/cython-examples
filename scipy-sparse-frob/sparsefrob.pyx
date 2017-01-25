"""
sparsefrob.pyx

simple cython test of accessing numpy arrays's data and compute the dot product

the C function: c_dot computes the inner product between two 1-d arrays.

"""

import cython

# import both numpy and the Cython declarations for numpy
import numpy as np
cimport numpy as np

from scipy.sparse import csr_matrix


cdef iter_over_sparse_matrix(m):
    cdef double frob
    frob = 0.0
    for item in m.data:
        frob += item * item

    return frob

@cython.boundscheck(False)
@cython.wraparound(False)
def frob(A not None):
    # TODO: Check if A is scipy.sparse matrix
    norm = iter_over_sparse_matrix(A)
    return norm
