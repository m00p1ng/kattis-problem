use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut line = String::new();
    stdin.lock().read_line(&mut line).unwrap();

    match line.find("ss") {
        Some(_) => println!("hiss"),
        None => println!("no hiss"),
    }
}
