use std::io;

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut l: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    l.sort();

    let d1 = l[1] - l[0];
    let d2 = l[2] - l[1];

    if d1 == d2 {
        println!("{}", l[2] + d1);
    } else if d1.abs() > d2.abs() {
        println!("{}", l[0] + d1 / 2);
    } else {
        println!("{}", l[1] + d2 / 2)
    }
}
