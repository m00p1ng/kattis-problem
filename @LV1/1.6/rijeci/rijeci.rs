use std::io;

fn gen_fibo() -> Vec<i64> {
    let mut fib = vec![0, 1];

    for i in 2..50 {
        let cur: i64 = fib[i - 1] + fib[i - 2];
        fib.push(cur);
    }

    return fib;
}

fn main() {
    let fib = gen_fibo();

    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let n: usize = buff.trim().parse().unwrap();

    println!("{} {}", fib[n - 1], fib[n]);
}
