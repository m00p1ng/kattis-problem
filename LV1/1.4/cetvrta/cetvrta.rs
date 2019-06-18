use std::io::{self, BufRead};

fn get_number(s: String) -> Vec<i32> {
    return s.split_whitespace().map(|n| n.parse().unwrap()).collect();
}

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());

    let num1: Vec<i32> = get_number(buff.next().unwrap());
    let num2: Vec<i32> = get_number(buff.next().unwrap());
    let num3: Vec<i32> = get_number(buff.next().unwrap());

    let x1 = num1[0];
    let x2 = num2[0];
    let x3 = num3[0];

    let y1 = num1[1];
    let y2 = num2[1];
    let y3 = num3[1];

    let x = if x1 == x2 {
        x3
    } else if x1 == x3 {
        x2
    } else {
        x1
    };

    let y = if y1 == y2 {
        y3
    } else if y1 == y3 {
        y2
    } else {
        y1
    };

    println!("{} {}", x, y);
}
