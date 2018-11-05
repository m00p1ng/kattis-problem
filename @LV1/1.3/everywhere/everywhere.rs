use std::collections::HashSet;
use std::io::{self, BufRead};

fn str2int(s: String) -> i32 {
    return s.trim().parse().unwrap();
}

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());

    let n = str2int(buff.next().unwrap());

    for _ in 0..n {
        let mut l = Vec::new();
        let k = str2int(buff.next().unwrap());

        for _ in 0..k {
            let tmp = buff.next().unwrap();
            l.push(tmp);
        }
        let uniq: HashSet<String> = l.into_iter().collect();
        println!("{}", uniq.len());
    }
}
