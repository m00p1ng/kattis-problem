fn main() {
    let stdin = std::io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();
    let num: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    let mut a = num[0];
    let mut b = num[1];

    b -= 45;

    if b < 0 {
        b += 60;
        a -= 1;
    }

    if a < 0 {
        a = 23;
    }

    println!("{} {}", a, b);
}
