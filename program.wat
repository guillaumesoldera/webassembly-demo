(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "logMethod" (func $logMethod (param i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "mult" (func $mult))
 (func $mult (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $logMethod
    (get_local $0)
   )
  )
  (drop
   (call $logMethod
    (get_local $1)
   )
  )
  (i32.mul
   (get_local $1)
   (get_local $0)
  )
 )
)
