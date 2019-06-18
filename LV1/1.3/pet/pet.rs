use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut mx = 0;
    let mut idx = 0;

    for (i, line) in stdin.lock().lines().map(|l| l.unwrap()).enumerate() {
        let sum = line
            .split_whitespace()
            .map(|n| n.parse::<i32>().unwrap())
            .sum();

        if sum > mx {
            mx = sum;
            idx = i;
        }
    }
    println!("{} {}", idx + 1, mx);
}
