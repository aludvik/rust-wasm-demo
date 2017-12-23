extern "C" {
    fn console_log(_: i32);
}

#[no_mangle]
pub fn print_num() {
    unsafe {
        console_log(19);
    }
}

#[no_mangle]
pub fn times_two(x: i32) -> i32 {
    x * 2
}
