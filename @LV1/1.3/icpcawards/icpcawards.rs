use std::collections::HashMap;
use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    buff.next();
    let mut cnt = 0;
    let mut uv = HashMap::new();

    for line in buff {
        if cnt == 12 {
            break;
        }
        let words: Vec<&str> = line.split_whitespace().collect();

        if !uv.contains_key(words[0]) {
            uv.insert(words[0].to_string(), true);
            println!("{} {}", words[0], words[1]);
            cnt += 1;
        }
    }
}
