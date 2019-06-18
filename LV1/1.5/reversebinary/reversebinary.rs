use std::io;

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut n: i32 = buff.trim().parse().unwrap();
    let mut ans: i32 = 0;

    while n > 0 {
        ans = (ans << 1) + (n & 1);
        n >>= 1;
    }
    println!("{}", ans);
}
