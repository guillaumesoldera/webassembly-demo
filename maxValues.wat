(module
  (memory (import "js" "mem") 1)
  (func (export "maxValues") (param $ptr i32) (param $len i32) (result i32)
    (local $end i32)
    (local $max i32)
    (set_local $max
        (i32.const -1)
    )
    (set_local $end (i32.add (get_local $ptr) (i32.mul (get_local $len) (i32.const 4))))
    (block $break (loop $top
      (br_if $break (i32.eq (get_local $ptr) (get_local $end)))
      (if
        (i32.gt_s
           (i32.load (get_local $ptr))
           (get_local $max)
        )
        (then
          (set_local $max (i32.load (get_local $ptr)))
        )
      )
      
      (set_local $ptr (i32.add (get_local $ptr) (i32.const 4)))
      (br $top)
    ))
    (get_local $max)
  )
)