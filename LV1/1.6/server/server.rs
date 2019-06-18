use std::io;

fn main() {
    let stdin = io::stdin();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let nums: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();
    let n = nums[0];
    let t = nums[1];

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();
    let l: Vec<i32> = buff
        .split_whitespace()
        .map(|n| n.parse().unwrap())
        .collect();

    let mut ans = 0;
    let mut total = 0;

    for i in 0..n {
        total += l[i as usize];
        if total > t {
            break;
        }
        ans += 1;
    }
    println!("{}", ans);
}
