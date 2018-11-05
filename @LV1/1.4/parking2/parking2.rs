use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    let n: i32 = buff.next().unwrap().trim().parse().unwrap();

    for _ in 0..n {
        buff.next();
        let park: Vec<i32> = buff
            .next()
            .unwrap()
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();

        let max = park.iter().max().unwrap();
        let min = park.iter().min().unwrap();

        println!("{}", 2 * (max - min));
    }
}
