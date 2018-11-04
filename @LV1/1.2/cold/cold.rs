use std::io;

fn main() {
    let mut buff = String::new();

    let stdin = io::stdin();
    stdin.read_line(&mut buff);

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let sz = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .filter(|&n| n < 0)
        .collect::<Vec<i32>>()
        .len();

    println!("{}", sz);
}
