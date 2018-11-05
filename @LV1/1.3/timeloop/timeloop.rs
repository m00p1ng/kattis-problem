use std::io;

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let n: i32 = buff.trim().parse().unwrap();

    for i in 1..(n + 1) {
        println!("{} Abracadabra", i);
    }
}
