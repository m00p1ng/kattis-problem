use std::io::{self, BufRead};
macro_rules! hashmap {
    ($( $key: expr => $val: expr ),*) => {{
        let mut map = ::std::collections::HashMap::new();
        $( map.insert($key, $val); )*
        map
    }}
}

fn transform(line: &str) {
    let dict = hashmap![
    'a' => "@",
    'b' => "8",
    'c' => "(",
    'd' => "|)",
    'e' => "3",
    'f' => "#",
    'g' => "6",
    'h' => "[-]",
    'i' => "|",
    'j' => "_|",
    'k' => "|<",
    'l' => "1",
    'm' => "[]\\/[]",
    'n' => "[]\\[]",
    'o' => "0",
    'p' => "|D",
    'q' => "(,)",
    'r' => "|Z",
    's' => "$",
    't' => "\'][\'",
    'u' => "|_|",
    'v' => "\\/",
    'w' => "\\/\\/",
    'x' => "}{",
    'y' => "`/",
    'z' => "2"
    ];

    for ch in line.chars().map(|c| c.to_ascii_lowercase()) {
        match dict.get(&ch) {
            Some(d) => print!("{}", d),
            None => print!("{}", ch),
        }
    }
}

fn main() {
    let mut line = String::new();
    let stdin = io::stdin();

    stdin.lock().read_line(&mut line).unwrap();
    transform(&line);
}
