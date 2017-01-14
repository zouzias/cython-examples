cdef extern from "hello.c":
  void _hello()
	        
cpdef hello():
  _hello()
