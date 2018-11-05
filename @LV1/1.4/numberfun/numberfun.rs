use std::io::{self, BufRead};

fn solvable(a: f64, b: f64, c: f64) -> bool {
    if a + b == c || a * b == c {
        return true;
    } else if a - b == c || b - a == c {
        return true;
    } else if a / b == c || b / a == c {
        return true;
    }
    return false;
}

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    buff.next();

    for line in buff {
        let num: Vec<f64> = line
            .split_whitespace()
            .map(|n| n.parse().unwrap())
            .collect();

        if solvable(num[0], num[1], num[2]) {
            println!("Possible");
        } else {
            println!("Impossible");
        }
    }
}
