use std::io;

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let n: f64 = buff.trim().parse().unwrap();
    let ans = n * 5280.0 * 1000.0 / 4854.0;

    println!("{}", ans.round());
}
