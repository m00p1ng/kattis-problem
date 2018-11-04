use std::io::{self, BufRead};

fn main() {
    let mut buff = String::new();
    let stdin = io::stdin();

    stdin.lock().read_line(&mut buff).unwrap();
    let num: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    println!("{}", num[0] * (num[1] - 1) + 1);
}
