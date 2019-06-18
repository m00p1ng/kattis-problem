use std::io::{self, BufRead};
fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());

    let c: f32 = buff.next().unwrap().trim().parse().unwrap();
    buff.next();

    let mut ans = 0.0;

    for line in buff {
        let num: Vec<f32> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();
        ans += num[0] * num[1];
    }
    println!("{}", ans * c);
}
