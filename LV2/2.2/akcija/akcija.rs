use std::io::{self, BufRead};

fn main() {
    let mut buff = String::new();
    let stdin = io::stdin();

    stdin.read_line(&mut buff).unwrap();

    let mut price: Vec<i32> = Vec::new();

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let n: i32 = line.trim().parse().unwrap();
        price.push(n);
    }

    let pl = price.len();
    if pl % 3 != 0 {
        for _ in 0..(3 - (pl % 3)) {
            price.push(0);
        }
    }

    price.sort_by(|a, b| a.cmp(b).reverse());

    let mut total = 0;
    for i in (0..pl).step_by(3) {
        total += price[i] + price[i + 1];
    }

    println!("{}", total);
}
