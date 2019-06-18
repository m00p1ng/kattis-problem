use std::io;

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let num: Vec<f32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    let d = 1.0 - num[1] / num[0];
    println!("{}", d * d * 100.0);
}
