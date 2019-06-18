use std::io::{self, BufRead};

fn gcd(a: i32, b: i32) -> i32 {
    if b == 0 {
        return a;
    }
    return gcd(b, a % b);
}

fn main() {
    let mut buff = String::new();
    let stdin = io::stdin();

    stdin.lock().read_line(&mut buff).unwrap();
    let l: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    if l[2] * gcd(l[0], l[1]) >= l[0] * l[1] {
        println!("yes");
    } else {
        println!("no");
    }
}
