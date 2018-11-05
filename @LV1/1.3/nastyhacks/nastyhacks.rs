use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    buff.next();

    for line in buff {
        let num: Vec<i32> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();
        let diff = num[1] - num[0];

        if diff == num[2] {
            println!("does not matter");
        } else if diff > num[2] {
            println!("advertise");
        } else {
            println!("do not advertise");
        }
    }
}
