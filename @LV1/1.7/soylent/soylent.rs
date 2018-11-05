use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let n: i32 = line.parse().unwrap();
        let rem: i32 = if n % 400 != 0 { 1 } else { 0 };

        println!("{}", n / 400 + rem);
    }
}
