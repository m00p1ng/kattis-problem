use std::io;

fn quadrant(x: i32, y: i32) -> i32 {
    match (x > 0, y > 0) {
        (true, true) => return 1,
        (false, true) => return 2,
        (false, false) => return 3,
        (true, false) => return 4,
    }
}

fn get_int() -> i32 {
    let stdin = io::stdin();
    let mut line = String::new();
    stdin.read_line(&mut line).unwrap();
    return line.trim().parse().unwrap();
}

fn main() {
    let x = get_int();
    let y = get_int();

    println!("{}", quadrant(x, y));
}
