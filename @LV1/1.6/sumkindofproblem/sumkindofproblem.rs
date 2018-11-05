use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let num: Vec<i32> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();
        let k = num[0];
        let r = num[1];
        let sum_r = r * (r + 1) / 2;

        println!("{} {} {} {}", k, sum_r, 2 * sum_r - r, 2 * sum_r);
    }
}
