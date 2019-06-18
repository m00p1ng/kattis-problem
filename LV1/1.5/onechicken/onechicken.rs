fn main() {
    let stdin = std::io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let num: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    let diff = num[0] - num[1];
    let p = if diff.abs() != 1 { "pieces" } else { "piece" };

    if diff > 0 {
        println!("Dr. Chaz needs {} more {} of chicken!", diff, p);
    } else {
        println!("Dr. Chaz will have {} {} of chicken left over!", -diff, p);
    }
}
