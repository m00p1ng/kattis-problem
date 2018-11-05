use std::io;

fn main() {
    let stdin = io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut l = vec![0; 4];

    for c in buff.trim().chars() {
        if c == '_' {
            l[0] += 1;
        } else if c.is_lowercase() {
            l[1] += 1;
        } else if c.is_uppercase() {
            l[2] += 1;
        } else {
            l[3] += 1;
        }
    }

    let sl = buff.trim().len() as f64;
    for n in l {
        println!("{}", n as f64 / sl);
    }
}
