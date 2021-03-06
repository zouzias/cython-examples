#!/usr/bin/env python

import pytest
import sparsefrob
import math
from scipy.sparse import csr_matrix
from scipy.sparse import csc_matrix
from scipy.sparse import coo_matrix


from scipy.linalg import norm

def local(A):
    TOL = 10e-15
    frob = sparsefrob.frob(A)
    expectedNorm = norm(A.data)
    assert math.fabs( frob - expectedNorm) < TOL


def test_csr_norm():
    A = csr_matrix([[1.0, 2.0, 0.0], [0.0, 0.0, 3.0], [4.0, 0.0, 5.0]])
    local(A)


def test_csc_norm():
    A = csc_matrix([[1.0, 2.0, 0.0], [0.0, 0.0, 3.0], [4.0, 0.0, 5.0]])
    local(A)


def test_coo_norm():
    A = coo_matrix([[1.0, 2.0, 0.0], [0.0, 0.0, 3.0], [4.0, 0.0, 5.0]])
    local(A)
