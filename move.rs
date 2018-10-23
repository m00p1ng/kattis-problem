use std::env;
use std::fs;
use std::path::Path;
use std::process;

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() != 3 {
        println!("Usage: ./move FILENAME LEVEL");
        process::exit(1);
    }

    let folder_name = &args[1];
    let lv = &args[2];
    let dir_lv = format!("@LV{}/{}/{}", &lv[0..1], lv, folder_name);

    if !Path::new(&folder_name).exists() {
        println!("{} not exists", folder_name);
        process::exit(1);
    }

    fs::create_dir_all(&dir_lv).unwrap_or_else(|_| {
        process::exit(1);
    });

    fs::rename(&folder_name, &dir_lv).unwrap_or_else(|_| {
        process::exit(1);
    });
}