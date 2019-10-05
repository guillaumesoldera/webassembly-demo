//extern crate rand;
//extern crate wasm_bindgen;
//use wasm_bindgen::prelude::*;
//use rand::Rng;
//use std::os::raw::c_void;
//use std::mem;


// Next let's define a macro that's like `println!`, only it works for
// `console.log`. Note that `println!` doesn't actually work on the wasm target
// because the standard library currently just eats all output. To get
// `println!`-like behavior in your app you'll likely want a macro like this.

//macro_rules! console_log {
//    // Note that this is using the `log` function imported above during
//    // `bare_bones`
//    ($($t:tt)*) => (log(&format_args!($($t)*).to_string()))
//}


//#[wasm_bindgen]
//extern "C" {
//    // Use `js_namespace` here to bind `console.log(..)` instead of just
//    // `log(..)`
//    #[wasm_bindgen(js_namespace = console)]
//    fn log(s: &str);
//
//    // The `console.log` is quite polymorphic, so we can bind it with multiple
//    // signatures. Note that we need to use `js_name` to ensure we always call
//    // `log` in JS.
//    #[wasm_bindgen(js_namespace = console, js_name = log)]
//    fn log_u32(a: u32);
//
//    // Multiple arguments too!
//    #[wasm_bindgen(js_namespace = console, js_name = log)]
//    fn log_many(a: &str, b: &str);
//}


#[no_mangle]
pub fn mult(a: i32, b: i32) -> i32 {
    //console_log!("Parameter a : {}!", a);
    //console_log!("Parameter b : {}!", b);
  return a + b
}
