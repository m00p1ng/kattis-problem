use std::io;

fn eval_euler(n: i32) -> f64 {
    if n == 0 {
        return 1.0;
    }
    if n == 1 {
        return 2.0;
    }

    let mut fac = 1.0;
    let mut euler = 2.0;

    for i in 2..(n + 1) {
        fac /= i as f64;
        euler += fac;
    }

    return euler;
}

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let n: i32 = buff.trim().parse().unwrap();
    let euler: f64 = eval_euler(n);

    println!("{}", euler);
}
