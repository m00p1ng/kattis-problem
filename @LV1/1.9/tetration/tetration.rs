use std::io::{self, BufRead};

fn main() {
    let mut buff = String::new();
    let stdin = io::stdin();

    stdin.lock().read_line(&mut buff).unwrap();

    let n: f32 = buff.trim().parse().unwrap();

    println!("{}", n.powf(1.0 / n));
}
