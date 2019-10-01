(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "jsPrintString" (func $jsPrintString (param i32 i32)))
 (import "env" "logMethod" (func $logMethod (param i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 16) "Inside mult method\00")
 (export "memory" (memory $0))
 (export "mult" (func $mult))
 (func $mult (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  (call $logMethod
   (get_local $0)
  )
  (call $logMethod
   (get_local $1)
  )
  (call $jsPrintString
   (i32.const 16)
   (i32.const 18)
  )
  (i32.mul
   (get_local $1)
   (get_local $0)
  )
 )
)
