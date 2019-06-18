use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.lock().read_line(&mut buff).unwrap();

    let words = buff.split_whitespace().collect::<Vec<&str>>();
    let ae = words.iter().filter(|w| w.contains("ae")).count();

    if ae * 10 >= &words.len() * 4 {
        println!("dae ae ju traeligt va");
    } else {
        println!("haer talar vi rikssvenska");
    }
}
