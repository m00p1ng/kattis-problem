use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let num: Vec<f64> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();
        let b = num[0];
        let p = num[1];

        let bpm = 60.0 * b / p;
        let abpm = 60.0 / p;
        println!("{} {} {}", bpm - abpm, bpm, bpm + abpm);
    }
}
