use std::f64::consts::PI;

fn main() {
    let stdin = std::io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();
    let num: Vec<f64> = buff
        .split_whitespace()
        .map(|l| l.parse().unwrap())
        .collect();

    let ans = num[0] / (num[1] / 180.0 * PI).sin();
    println!("{}", ans.ceil());
}
