use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut ts = 1;

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let nums: Vec<i32> = line
            .split_whitespace()
            .skip(1)
            .map(|n| n.parse().unwrap())
            .collect();
        let a = nums.iter().min().unwrap();
        let b = nums.iter().max().unwrap();

        println!("Case {}: {} {} {}", ts, a, b, b - a);
        ts += 1;
    }
}
