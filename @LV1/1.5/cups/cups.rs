use std::io::{self, BufRead};

type Cup = (i32, String);

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut cups = Vec::new();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let w: Vec<&str> = line.split_whitespace().collect();

        if w[0].parse::<i32>().is_ok() {
            let num: i32 = w[0].parse().unwrap();
            let c: Cup = (num, w[1].to_string());
            cups.push(c);
        } else {
            let num: i32 = w[1].parse().unwrap();
            let c: Cup = (2 * num, w[0].to_string());
            cups.push(c);
        }
    }

    cups.sort();

    for c in cups {
        println!("{}", c.1);
    }
}
