fn main() {
    let stdin = std::io::stdin();
    let mut buff = String::new();
    stdin.read_line(&mut buff).unwrap();

    let mut l = Vec::new();

    l.push(buff.matches("T").count());
    l.push(buff.matches("C").count());
    l.push(buff.matches("G").count());

    let mn = l.iter().min().unwrap();
    let ans = l.iter().map(|l| l * l).sum::<usize>() + 7 * mn;
    println!("{:?}", ans);
}
