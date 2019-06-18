fn main() {
    let stdin = std::io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let num: Vec<i32> = buff
        .split_whitespace()
        .map(|l| l.parse().unwrap())
        .collect();

    let m = num.iter().min().unwrap();
    let n = num.iter().max().unwrap();

    for i in (m + 1)..(n + 2) {
        println!("{}", i);
    }
}
