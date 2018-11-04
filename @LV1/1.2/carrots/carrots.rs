use std::io::{self, BufRead};

fn main() {
    let mut buff = String::new();
    let stdin = io::stdin();

    stdin.lock().read_line(&mut buff).unwrap();

    let word: Vec<&str> = buff.split_whitespace().collect();
    println!("{}", word[1]);
}
