use std::io::{self, BufRead};

fn char2str(c: Vec<char>) -> String {
    return c.into_iter().collect::<String>();
}

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());

    let n: i32 = buff.next().unwrap().parse().unwrap();

    for _ in 0..n {
        let a: Vec<char> = buff.next().unwrap().trim().chars().collect();
        let b: Vec<char> = buff.next().unwrap().trim().chars().collect();

        let l = a.len();
        let mut out: Vec<char> = vec!['\0'; l];
        for j in 0..l {
            if a[j] == b[j] {
                out[j] = '.';
            } else {
                out[j] = '*';
            }
        }
        println!("{}", char2str(a));
        println!("{}", char2str(b));
        println!("{}", char2str(out));
        println!();
    }
}
