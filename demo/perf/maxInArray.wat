(module
 (table 0 anyfunc)
 (memory (import "js" "mem") 1)
 (export "maxValues" (func $maxValues))
 (func $maxValues (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i32.const -1)
   )
   (loop $label$1
    (set_local $3
     (select
      (tee_local $2
       (i32.load
        (get_local $0)
       )
      )
      (get_local $3)
      (i32.gt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
    (br_if $label$1
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (return
    (get_local $3)
   )
  )
  (i32.const -1)
 )
)