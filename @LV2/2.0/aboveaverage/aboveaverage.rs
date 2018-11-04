use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();

    stdin.read_line(&mut buff).unwrap();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let score: Vec<f32> = line
            .split_whitespace()
            .skip(1)
            .map(|n| n.parse().unwrap())
            .collect();

        let l = score.len() as f32;
        let mean: f32 = score.iter().sum::<f32>() / l;

        let rem = score.iter().filter(|&n| n > &mean).count() as f32;
        println!("{:.3}%", rem * 100.0 / l);
    }
}
