use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());

    let num: Vec<f32> = buff
        .next()
        .unwrap()
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();
    let d = (num[1].powf(2.0) + num[2].powf(2.0)).sqrt();

    for line in buff {
        let k: f32 = line.trim().parse().unwrap();

        if k <= d {
            println!("DA");
        } else {
            println!("NE");
        }
    }
}
