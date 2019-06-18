use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut line = String::new();

    stdin.lock().read_line(&mut line).unwrap();
    let nums: Vec<i32> = line
        .split_whitespace()
        .map(|num| num.parse().unwrap())
        .collect();
    let r1 = nums[0];
    let s = nums[1];

    println!("{}", 2 * s - r1);
}
