use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    buff.next();

    let mut ans: f64 = 0.0;
    for line in buff {
        let num: Vec<f64> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();
        ans += num[0] * num[1];
    }
    println!("{}", ans);
}
