use std::io;

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut num: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();
    num.sort();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    for ch in buff.trim().chars() {
        let idx = ch as u32 - 'A' as u32;
        print!("{:?} ", num[idx as usize]);
    }
}
