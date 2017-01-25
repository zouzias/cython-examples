#!/usr/bin/env python

"""
multiply.pyx and c_multiply.c test code

designed to be run-able with py.test
"""
import pytest
import numpy as np
import mydot

def test_basic():
    a = np.random.rand(12)
    b = np.random.rand(12)
    dot = mydot.dot(a, b)
    expectedDot = np.dot(a,b)
    assert dot == expectedDot
