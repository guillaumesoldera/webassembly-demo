(module
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "fibo" (func $fibo))
 (func $fibo (; 0 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (tee_local $0
      (i32.add
       (get_local $0)
       (i32.const -1)
      )
     )
     (i32.const 2)
    )
   )
   (set_local $1
    (i32.const 1)
   )
   (loop $label$1
    (set_local $1
     (i32.add
      (call $fibo
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (br_if $label$1
     (i32.gt_u
      (tee_local $0
       (i32.add
        (get_local $0)
        (i32.const -2)
       )
      )
      (i32.const 1)
     )
    )
   )
  )
  (get_local $1)
 )
)
