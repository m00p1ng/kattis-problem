use std::io::{self, BufRead};

fn main() {
    let mut buff = String::new();
    let stdin = io::stdin();

    stdin.lock().read_line(&mut buff).unwrap();

    let words: Vec<&str> = buff.split("-").collect();

    for w in words {
        print!("{}", w.chars().nth(0).unwrap());
    }
}
