use std::io;

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let area: f64 = buff.trim().parse().unwrap();
    let l = 4.0 * area.sqrt();

    println!("{}", l);
}
