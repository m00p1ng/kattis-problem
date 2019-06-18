fn main() {
    let stdin = std::io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut x: i32 = 0;
    let mut y: i32 = 0;
    let s = buff.trim().len();
    let l = s - 1;

    for (i, c) in buff.trim().chars().enumerate() {
        let n: i32 = c as i32 - '0' as i32;

        if n == 1 || n == 3 {
            x |= 1 << (l - i);
        }
        if n == 2 || n == 3 {
            y |= 1 << (l - i);
        }
    }

    println!("{} {} {}", s, x, y);
}
