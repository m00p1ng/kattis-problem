use std::io;

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let num: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();
    let a = num[0];
    let b = num[1];
    let c = num[2];

    if a + b == c {
        println!("{}+{}={}", a, b, c);
    } else if a - b == c {
        println!("{}-{}={}", a, b, c);
    } else if a * b == c {
        println!("{}*{}={}", a, b, c);
    } else if a / b == c {
        println!("{}/{}={}", a, b, c);
    } else if a == b + c {
        println!("{}={}+{}", a, b, c);
    } else if a == b - c {
        println!("{}={}-{}", a, b, c);
    } else if a == b * c {
        println!("{}={}*{}", a, b, c);
    } else if a == b / c {
        println!("{}={}/{}", a, b, c);
    }
}
