use std::io::{self, BufRead};

fn main() {
    let mut line = String::new();
    let stdin = io::stdin();

    stdin.lock().read_line(&mut line).unwrap();

    let num: Vec<i32> = line
        .chars()
        .rev()
        .collect::<String>()
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    if num[0] > num[1] {
        println!("{}", num[0]);
    } else {
        println!("{}", num[1]);
    }
}
