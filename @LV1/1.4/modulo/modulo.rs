use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut cnt = 0;
    let mut visited = vec![false; 42];

    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let n: usize = (line.trim().parse::<i32>().unwrap() % 42) as usize;

        if !visited[n] {
            cnt += 1;
            visited[n] = true;
        }
    }
    println!("{}", cnt);
}
