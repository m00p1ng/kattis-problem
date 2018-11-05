use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    buff.next();

    let mut sum = 0;

    for line in buff {
        let tmp: i32 = line.trim().parse().unwrap();
        sum += (tmp / 10).pow((tmp % 10) as u32)
    }
    println!("{}", sum);
}
