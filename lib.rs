extern crate rand;
extern crate wasm_bindgen;
use wasm_bindgen::prelude::*;
use rand::Rng;


// Next let's define a macro that's like `println!`, only it works for
// `console.log`. Note that `println!` doesn't actually work on the wasm target
// because the standard library currently just eats all output. To get
// `println!`-like behavior in your app you'll likely want a macro like this.

macro_rules! console_log {
    // Note that this is using the `log` function imported above during
    // `bare_bones`
    ($($t:tt)*) => (log(&format_args!($($t)*).to_string()))
}

#[wasm_bindgen]
extern "C" {
    // Use `js_namespace` here to bind `console.log(..)` instead of just
    // `log(..)`
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: &str);

    // The `console.log` is quite polymorphic, so we can bind it with multiple
    // signatures. Note that we need to use `js_name` to ensure we always call
    // `log` in JS.
    #[wasm_bindgen(js_namespace = console, js_name = log)]
    fn log_u32(a: u32);

    // Multiple arguments too!
    #[wasm_bindgen(js_namespace = console, js_name = log)]
    fn log_many(a: &str, b: &str);
}

#[no_mangle]
#[wasm_bindgen]
pub fn max_from_array(nbValues: usize) -> f32 {
    let mut rng = rand::thread_rng();
    let mut values = Vec::<f32>::with_capacity(nbValues);
    //let start: f32 = performance_now!();
    //console_log!("Start filling array {}", start);
    for _ in 0..nbValues {
        values.push(rng.gen());
    }
    //let tmp = performance_now!();
    //console_log!("Array filled, start computing {}", tmp - start);
    let mut max: f32 = 0.0;
    for current in &values {
        if current > &max {
            //console_log!("Change {} > {}!", current, max);
            max = *current;
        }
    }
    //let end = performance_now!();
    //console_log!("Computed done {}", end - tmp);
    //console_log!("Total time {}", end - start);
    return max
}

#[no_mangle]
#[wasm_bindgen]
pub fn maxValues(values: &[i32]) -> i32 {
    let mut max: i32 = 0;
    console_log!("Hello {}!", values.len());
    for current in values {
        if current > &max {
            max = *current;
        }
    }
    return max
}

#[no_mangle]
pub fn add(a: i32, b: i32) -> i32 {
  return a + b
}
