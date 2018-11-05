use std::io::{self, BufRead};

fn sum_digit(n: i32) -> i32 {
    let mut ans = 0;
    let mut temp = n;

    while temp > 0 {
        ans += temp % 10;
        temp /= 10;
    }
    return ans;
}

fn main() {
    let stdin = io::stdin();
    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let n = line.trim().parse().unwrap();
        if n == 0 {
            break;
        }

        let mut i = 11;
        let sum_n = sum_digit(n);

        loop {
            let sum_i = sum_digit(n * i);
            if sum_i == sum_n {
                println!("{}", i);
                break;
            }
            i += 1;
        }
    }
}
