use std::env;

fn main() {
    let mut path_delimiter : String = "".to_string();
    let mut env_var : String = "".to_string();
    if cfg!(windows) {
        print!("windows");
        path_delimiter = ";".to_string();
        env_var = "PATH".to_string();

    } else if cfg!(unix) {
        print!("unix");
        path_delimiter = ":".to_string();
        env_var = "LD_LIBRARY_PATH".to_string();

    } else if cfg!(target_os = "macos") {
        print!("mac");
        path_delimiter = ":".to_string();
        env_var = "LD_LIBRARY_PATH".to_string();
    }

    let ld_library_path = env::var(&env_var).unwrap_or("None".to_string());

    let mut search_path : String = "".to_string();
    for segment in ld_library_path.split(&path_delimiter) {
        search_path += "cargo:rustc-link-search=";
        search_path += segment;
        search_path += "\n";
    }

    // Adding link search path to as dllmain
    println!("{}",search_path);

    println!("cargo:rustc-link-lib=dllmain");
    println!("cargo:rustc-link-lib=envconst");
    println!("cargo:rustc-link-lib=timefunc");
    println!("cargo:rustc-link-lib=astrofunc");
    println!("cargo:rustc-link-lib=tle");
    println!("cargo:rustc-link-lib=sgp4prop");
}
