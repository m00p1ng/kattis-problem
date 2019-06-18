use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    buff.next();

    for line in buff {
        let num: i32 = line.trim().parse().unwrap();
        if num % 2 == 0 {
            println!("{} is even", num);
        } else {
            println!("{} is odd", num);
        }
    }
}
