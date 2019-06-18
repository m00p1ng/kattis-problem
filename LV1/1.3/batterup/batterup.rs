use std::io::{self, BufRead};
fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    buff.next();

    let num: Vec<i32> = buff
        .next()
        .unwrap()
        .split_whitespace()
        .map(|l| l.parse().unwrap())
        .filter(|&n| n >= 0)
        .collect();

    let sz = num.len() as f64;
    let sum = num.iter().sum::<i32>() as f64;

    println!("{:?}", sum / sz);
}
