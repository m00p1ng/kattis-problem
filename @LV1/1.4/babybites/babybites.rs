use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    let mut buff = stdin.lock().lines().map(|l| l.unwrap());
    buff.next();

    let mut cnt = 1;
    let mut is_valid = true;

    for l in buff.next().unwrap().split_whitespace() {
        if l != "mumble" {
            let n: i32 = l.parse().unwrap();
            if n != cnt {
                is_valid = false;
                break;
            }
        }
        cnt += 1;
    }

    if is_valid {
        println!("makes sense");
    } else {
        println!("something is fishy");
    }
}
