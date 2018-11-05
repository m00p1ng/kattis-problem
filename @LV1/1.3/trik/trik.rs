fn main() {
    let stdin = std::io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut l = vec![true, false, false];

    for ch in buff.trim().chars() {
        if ch == 'A' {
            l.swap(0, 1);
        } else if ch == 'B' {
            l.swap(1, 2);
        } else {
            l.swap(0, 2);
        }
    }

    if l[0] {
        println!("1");
    } else if l[1] {
        println!("2");
    } else {
        println!("3");
    }
}
