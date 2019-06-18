use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let num: i32 = line
            .split_whitespace()
            .map(|n| n.parse::<i32>().unwrap())
            .sum();

        println!("{}", num / 2);
    }
}
