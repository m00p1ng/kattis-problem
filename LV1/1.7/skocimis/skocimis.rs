use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.lock().read_line(&mut buff).unwrap();

    let num: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    let dab = num[1] - num[0];
    let dbc = num[2] - num[1];

    let m = if dab > dbc { dab } else { dbc };

    println!("{}", m - 1);
}
