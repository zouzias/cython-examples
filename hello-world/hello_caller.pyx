cdef extern from "hello.c":
  void _hello()
	        
cpdef hello():
  _hello()
 
cdef extern from "add.c":
  double  _add(double a, double b)

cpdef double add(double a, double b):
  return _add(a, b)
