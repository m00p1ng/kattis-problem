use std::io;

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();

    stdin.read_line(&mut buff).unwrap();
    let num: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    let x = num[0];
    let y = num[1];
    let n = num[2];

    for i in 1..(n + 1) {
        match (i % x == 0, i % y == 0) {
            (true, true) => println!("FizzBuzz"),
            (true, _) => println!("Fizz"),
            (_, true) => println!("Buzz"),
            (_, _) => println!("{}", i),
        }
    }
}
