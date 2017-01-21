/*
c_dot.c

simple C function that computes inner product
used to see how we can do this with Cython/numpy
*/

double c_dot (double* a, double* b, int m , int n) {

    int i;
    int smallestSize = m > n ? n : m;

    double dot = 0.0;

    for (i = 0; i < smallestSize; i++) {
      dot += a[i] * b[i];
    }

    return dot;
}
