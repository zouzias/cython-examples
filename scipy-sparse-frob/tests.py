#!/usr/bin/env env/bin/python

import numpy as np
import sparsefrob
import math
from scipy.sparse import csr_matrix
from scipy.sparse import csc_matrix
from scipy.sparse import lil_matrix
from scipy.sparse import coo_matrix
from scipy.sparse import dia_matrix
from scipy.sparse import dok_matrix
from scipy.sparse import bsr_matrix


from scipy.linalg import norm

def testSparseMatrix(A):
    frob = sparsefrob.frob(A)
    expectedNorm = norm(A.data)
    assert math.fabs( math.sqrt(frob) - expectedNorm) < 10e-15

def test_csr_norm():
    A = csr_matrix([[1.0, 2.0, 0.0], [0.0, 0.0, 3.0], [4.0, 0.0, 5.0]])
    testSparseMatrix(A)

def test_csc_norm():
    A = csc_matrix([[1.0, 2.0, 0.0], [0.0, 0.0, 3.0], [4.0, 0.0, 5.0]])
    testSparseMatrix(A)

def test_coo_norm():
    A = coo_matrix([[1.0, 2.0, 0.0], [0.0, 0.0, 3.0], [4.0, 0.0, 5.0]])
    testSparseMatrix(A)




test_csc_norm()
test_csr_norm()
test_coo_norm()