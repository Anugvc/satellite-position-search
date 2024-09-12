#![allow(non_snake_case)]
#[allow(unused_imports)]

#[path = "../../../wrappers/DllMain.rs"]
mod DllMain;
use std::os::raw::c_char;
use std::ffi::CString;

fn main() {
    let cin = 'Z' as c_char;
    let cout = CString::new(" ").unwrap();
    let intin: i32 = 42;
    let mut intout: i32 = 0;
    let int64in: i64 = 1234567890123456789;
    let mut int64out: i64 = 0;
    let doublein: f64 = 13.0;
    let mut doubleout: f64 = 0.0;
    let strin = CString::new("I am Batman!").unwrap();
    let strout = CString::new(" ".repeat(512)).unwrap();
    //Test 1D arrays
    let int1Din: *const [i32; 3] = &[1, 2, 3];
    let mut int1Dout: [i32; 3] = [0, 0, 0];
    let int641Din: *const [i64;3] = &[1234567890123456789, 223456789012345679, 3234567890123456789];
    let mut int641Dout: [i64; 3] = [0, 0, 0];
    let double1Din: *const [f64; 3] = &[13.12, 42.23, 123.45];
    let mut double1Dout: [f64; 3] = [0.0, 0.0, 0.0];
    //Test 2D arrays
    let int2Din: *const [[i32; 3]; 2] = &[[1, 2, 3], [4, 5, 6]];
    let mut int2Dout: [[i32; 3]; 2] = [[0, 0, 0], [0, 0, 0]];
    let int642Din: *const [[i64; 3]; 2] = &[[1, 2, 3], [4, 5, 6]];
    let mut int642Dout: [[i64; 3]; 2] = [[0, 0, 0], [0, 0, 0]];
    let double2Din: *const [[f64; 3]; 2] = &[[1.1, 2.2, 3.3], [4.4, 5.5, 6.6]];
    let mut double2Dout: [[f64; 3]; 2] = [[0.0, 0.0, 0.0], [0.0, 0.0, 0.0]];
    unsafe{DllMain::TestInterface(cin, cout.as_ptr(), intin, &mut intout, int64in, &mut int64out, doublein, &mut doubleout, strin.as_ptr(), strout.as_ptr(),
       int1Din, &mut int1Dout, int641Din, &mut int641Dout, double1Din, &mut double1Dout,
       int2Din, &mut int2Dout, int642Din, &mut int642Dout, double2Din, &mut double2Dout)}
    //Test * arrays 
    //let arrSize: i32 = 128;
    //let mut xa_moic: [f64; 128] = [0.0; 128];
    //let mut xa_moic: Vec<f64> = vec![0.0; arrSize as usize];
    //unsafe{DllMain::GetMOICData(arrSize, xa_moic.as_mut_ptr())};
   
    //print output
    println!("TestInterface Outputs:");
    println!("{}", cout.to_str().unwrap());    
    println!("{}", intout);
    println!("{}", int64out);
    println!("{}", doubleout);
    println!("{}", strout.to_str().unwrap().trim());
    println!("{:?}", int1Dout);
    println!("{:?}", int641Dout);
    println!("{:?}", double1Dout);
    println!("{:?}", int2Dout);
    println!("{:?}", int642Dout);
    println!("{:?}", double2Dout);
    println!("");    
    
    //TestInterface2
    let cInOut = CString::new("A").unwrap();
    let mut intInOut: i32 = 3;
    let mut longInOut: i64 = 400;
    let mut realInOut: f64 = 17.0;
    let strInOut = CString::new("I am Batman!".to_owned() + &" ".repeat(512)).unwrap();
    //Test 1D arrays
    let mut int1DInOut: [i32; 3] = [1, 2, 3];
    let mut long1DInOut: [i64; 3] = [1234567890123456789, 223456789012345679, 3234567890123456789];
    let mut real1DInOut: [f64; 3] = [13.12, 42.23, 123.45];
    //Test 2D arrays
    //let int2Din: *const [[i32; 3]; 2] = &[[1, 2, 3], [4, 5, 6]];
    let mut int2DInOut: [[i32; 3]; 2] = [[1, 2, 3], [4, 5, 6]];
    //let int642Din: *const [[i64; 3]; 2] = &[[1, 2, 3], [4, 5, 6]];
    let mut long2DInOut: [[i64; 3]; 2] = [[1, 2, 3], [4, 5, 6]];
    //let double2Din: *const [[f64; 3]; 2] = &[[1.1, 2.2, 3.3], [4.4, 5.5, 6.6]];
    let mut real2DInOut: [[f64; 3]; 2] = [[1.1, 2.2, 3.3], [4.4, 5.5, 6.6]];
    unsafe{DllMain::TestInterface2(cInOut.as_ptr(), &mut intInOut, &mut longInOut, &mut realInOut, strInOut.as_ptr(), &mut int1DInOut, &mut long1DInOut, &mut real1DInOut, &mut int2DInOut, &mut long2DInOut, &mut real2DInOut);}
    println!("TestInterface2 Outputs:");
    println!("{}", cInOut.to_str().unwrap());    
    println!("{}", intInOut);
    println!("{}", longInOut);
    println!("{}", realInOut);
    println!("{}", strInOut.to_str().unwrap().trim());
    println!("{:?}", int1DInOut);
    println!("{:?}", real1DInOut);
    println!("{:?}", double1Dout);
    println!("{:?}", int2DInOut);
    println!("{:?}", long2DInOut);
    println!("{:?}", real2DInOut);
    println!("");    
    
    //TestInterface3
    let Unk1DSize: i32 = 3;
    let Unk1DIn: Vec<i32> = vec![1, 2, 3];
    let mut Unk1DOut: Vec<i32> = vec![0; Unk1DSize as usize];
    let Unk2DSize: i32 = 2;
    let Unk2DIn: Vec<i32> = vec![1, 2, 3, 4, 5, 6];
    let mut Unk2DOut: Vec<i32> = vec![0; (Unk2DSize*3) as usize];
    unsafe{DllMain::TestInterface3(Unk1DIn.as_ptr(), Unk1DOut.as_mut_ptr(), Unk2DIn.as_ptr(), Unk2DOut.as_mut_ptr());}
    println!("TestInterface3 Outputs:");
    println!("{:?}", Unk1DOut);
    println!("{:?}", Unk2DOut);
    println!("");    
   
    println!("Checking Constants");
    println!("{}", DllMain::LOGMSGLEN);
    
}
