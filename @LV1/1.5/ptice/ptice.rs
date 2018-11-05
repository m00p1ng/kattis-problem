use std::io;

fn repeat_string(s: &str, n: usize) -> Vec<char> {
    let tmp = s.repeat(n);
    return tmp.chars().collect::<Vec<char>>();
}

fn main() {
    let a = repeat_string("ABC", 40);
    let b = repeat_string("BABC", 25);
    let g = repeat_string("CCAABB", 20);

    let mut score = vec![0, 0, 0];
    let name = vec!["Adrian", "Bruno", "Goran"];

    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    for (i, ch) in buff.trim().chars().enumerate() {
        if a[i] == ch {
            score[0] += 1;
        }
        if b[i] == ch {
            score[1] += 1;
        }
        if g[i] == ch {
            score[2] += 1;
        }
    }
    let m = *score.iter().max().unwrap();

    println!("{}", m);

    for i in 0..3 {
        if score[i] == m {
            println!("{}", name[i]);
        }
    }
}
