use std::io::{self, BufRead};

fn str2int(s: String) -> i32 {
    return s.trim().parse().unwrap();
}

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());

    let x: i32 = str2int(buff.next().unwrap());
    let n: i32 = str2int(buff.next().unwrap());
    let mut total = 0;

    for line in buff {
        let tmp = str2int(line);
        total += tmp;
    }

    println!("{}", n * x + x - total);
}
