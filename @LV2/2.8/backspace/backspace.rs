use std::io::{self, BufRead};

fn main() {
    let mut line = String::new();
    let stdin = io::stdin();

    stdin.lock().read_line(&mut line).unwrap();

    let mut out: Vec<char> = vec!['a'; 1000000];
    let mut cnt = 0usize;

    for ch in line.trim().chars() {
        if ch == '<' {
            if cnt > 0 {
                cnt -= 1;
            }
        } else {
            out[cnt] = ch;
            cnt += 1;
        }
    }
    println!("{}", out.iter().take(cnt).collect::<String>());
}
