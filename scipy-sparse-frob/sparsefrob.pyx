"""
sparsefrob.pyx

Computes the Frobenius norm over a Scipy CSR, CSC or COO sparse matrix

"""

import cython

# import both numpy and the Cython declarations for numpy
import numpy as np
cimport numpy as np
import math
from scipy.sparse import csr_matrix
from scipy.sparse import csc_matrix
from scipy.sparse import coo_matrix

cdef iter_over_sparse_matrix(A):
    if not (issubclass(type(A), csr_matrix) or issubclass(type(A), csc_matrix) or issubclass(type(A), coo_matrix)):
        raise ValueError("input matrix must be a scipy sparse matrix of type (CSC/CSR/COO)")

    cdef double frob = 0.0
    for item in A.data:
        frob += item * item

    return math.sqrt(frob)

@cython.boundscheck(False)
@cython.wraparound(False)
def frob(A not None):
    norm = iter_over_sparse_matrix(A)
    return norm
