use std::f64::consts::PI;
use std::io;

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();
    let r: f64 = buff.trim().parse().unwrap();

    println!("{}", PI * r * r);
    println!("{}", 2.0 * r * r);
}
