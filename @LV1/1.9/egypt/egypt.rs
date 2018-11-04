use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let mut l: Vec<i32> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();

        if l[0] == 0 && l[1] == 0 && l[2] == 0 {
            break;
        }

        l.sort();

        if l[0].pow(2) + l[1].pow(2) == l[2].pow(2) {
            println!("right");
        } else {
            println!("wrong");
        }
    }
}
