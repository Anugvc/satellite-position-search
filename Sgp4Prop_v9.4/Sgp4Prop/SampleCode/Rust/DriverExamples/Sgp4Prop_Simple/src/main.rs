#![allow(non_snake_case)]
#[allow(unused_imports)]

#[path = "../../../wrappers/DllMain.rs"]
mod DllMain;
#[path = "../../../wrappers/EnvConst.rs"]
mod EnvConst;
#[path = "../../../wrappers/TimeFunc.rs"]
mod TimeFunc;
#[path = "../../../wrappers/AstroFunc.rs"]
mod AstroFunc;
#[path = "../../../wrappers/Tle.rs"]
mod Tle;
#[path = "../../../wrappers/Sgp4Prop.rs"]
mod Sgp4Prop;
//use std::os::raw::c_char;
use std::ffi::CString;
use std::process;

fn exitErr() {
	let lastErrMsg = CString::new(" ".repeat(512)).unwrap();
	unsafe{DllMain::GetLastErrMsg(lastErrMsg.as_ptr())}; 
	println!("{}", lastErrMsg.to_str().unwrap().trim());
	process::exit(1);
}

fn main() {
   let line1 = CString::new("1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814").unwrap();
   let line2 = CString::new("2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199").unwrap();
   let satKey = unsafe{Tle::TleAddSatFrLines(line1.as_ptr(),line2.as_ptr())};
   println!("{}", satKey);
   
   //This shows how to do it with sats loaded into memory
   let nsats = unsafe{Tle::TleGetCount()};
   println!("nsats = {}", nsats);
   let mut satKeys: Vec<i64> = vec![0; nsats as usize];
   unsafe{Tle::TleGetLoaded(0, satKeys.as_mut_ptr())};
   println!("{:?}", satKeys);
   
   let ErrCode = unsafe{Sgp4Prop::Sgp4InitSat(satKeys[0])}; //Can use satKey or satKeys[0]
   if ErrCode != 0 {exitErr();}
   
   let mut ds50UTC: f64 = 0.0;
   let mut pos: [f64; 3] = [0.0; 3];
   let mut vel: [f64; 3] = [0.0; 3];
   let mut llh: [f64; 3] = [0.0; 3];
   
   let mut mse: f64 = 0.0;
   while mse <= 14400.0 {
      let ErrCode = unsafe{Sgp4Prop::Sgp4PropMse(satKey, mse, &mut ds50UTC, &mut pos, &mut vel, &mut llh)};
      if ErrCode != 0 {exitErr();}
      println!("{:05} {:17.9} {:17.9} {:17.9} {:12.9} {:12.9} {:12.9}", mse, pos[0], pos[1], pos[2], vel[0], vel[1], vel[2]);
      mse += 1440.0;
   }
}
