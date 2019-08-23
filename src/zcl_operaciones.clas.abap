class ZCL_OPERACIONES definition
  public
  final
  create public .

public section.

  methods MTH_SUMA
    importing
      !NUM1 type NUM
      !NUM2 type NUM
    exporting
      !E_RESULT type NUM .
  methods MTH_RESTA
    importing
      !NUM1 type NUM
      !NUM2 type NUM
    exporting
      !E_RESULT type NUM .
protected section.
private section.
ENDCLASS.



CLASS ZCL_OPERACIONES IMPLEMENTATION.


method MTH_RESTA.
E_RESULT = NUM1 - NUM2.
endmethod.


method MTH_SUMA.
  E_RESULT = NUM1 + NUM2.
endmethod.
ENDCLASS.
