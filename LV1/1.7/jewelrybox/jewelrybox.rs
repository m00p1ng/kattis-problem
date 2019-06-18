use std::io::{self, BufRead};

fn find_height(a: f64, b: f64) -> f64 {
    let ab = a + b;
    return (ab - (ab * ab - 3.0 * a * b).sqrt()) / 6.0;
}

fn max_volumn(a: f64, b: f64) -> f64 {
    let m_h = find_height(a, b);
    return m_h * (a - 2.0 * m_h) * (b - 2.0 * m_h);
}

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let num: Vec<f64> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();
        println!("{}", max_volumn(num[0], num[1]));
    }
}
