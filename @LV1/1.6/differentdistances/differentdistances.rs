use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let sz = line.split_whitespace().count();

        if sz == 1 {
            break;
        }

        let num: Vec<f64> = line
            .split_whitespace()
            .map(|l| l.parse().unwrap())
            .collect();
        let x1 = num[0];
        let x2 = num[2];
        let y1 = num[1];
        let y2 = num[3];
        let p = num[4];
        let ans = ((x1 - x2).abs().powf(p) + (y1 - y2).abs().powf(p)).powf(1.0 / p);
        println!("{}", ans);
    }
}
