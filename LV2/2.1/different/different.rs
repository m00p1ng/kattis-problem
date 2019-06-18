use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    for buff in stdin.lock().lines().map(|l| l.unwrap()) {
        let num: Vec<i64> = buff
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();
        println!("{}", (num[0] - num[1]).abs());
    }
}
