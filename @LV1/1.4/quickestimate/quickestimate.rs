use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        println!("{}", line.len());
    }
}
