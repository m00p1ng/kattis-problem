use std::io;

fn main() {
    let stdin = io::stdin();

    let mut a = String::new();
    let mut b = String::new();

    stdin.read_line(&mut a).unwrap();
    stdin.read_line(&mut b).unwrap();

    if a.len() < b.len() {
        println!("no");
    } else {
        println!("go");
    }
}
