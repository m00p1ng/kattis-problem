use std::io;

fn main() {
    let stdin = io::stdin();
    let piece: Vec<i32> = vec![1, 1, 2, 2, 2, 8];

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let num: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    for i in 0..6 {
        print!("{} ", piece[i] - num[i]);
    }
}
