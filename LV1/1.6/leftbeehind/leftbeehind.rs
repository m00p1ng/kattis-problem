use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let num: Vec<i32> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();
        let a = num[0];
        let b = num[1];

        if a == 0 && b == 0 {
            break;
        }

        if a + b == 13 {
            println!("Never speak again.")
        } else if a == b {
            println!("Undecided.")
        } else if a > b {
            println!("To the convention.")
        } else {
            println!("Left beehind.")
        }
    }
}
