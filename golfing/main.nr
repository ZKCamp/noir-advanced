use dep::std;

// Unoptimized
// Gates - 3106, ACIR Opcodes - 78
fn main(num: u72) -> pub [u8; 8] {
    let mut out: [u8; 8] = [0; 8];
    for i in 0..8 {
        out[i] = (num >> (56 - (i * 8))) as u8;
    }
    out
}

// Optimized
// Gates - 2902, ACIR Opcodes - 78
// fn main(num: u72) -> pub [u8; 8] {
//     let out = u72_to_u8(num);

//     let mut reconstructed_num: u72 = 0;
//     for i in 0..8 {
//         reconstructed_num += (out[i] as u72 << (56 - (8 * i)));
//     }
//     assert(num == reconstructed_num);
//     out
// }
 
// unconstrained fn u72_to_u8(num: u72) -> [u8; 8] {
//     let mut out: [u8; 8] = [0; 8];
//     for i in 0..8 {
//         out[i] = (num >> (56 - (i * 8))) as u8;
//     }
//     out
// }


#[test]
fn test_golfing() {
    let ans = main(2343433);
    assert(ans[7] == 0x09);
    assert(ans[6] == 0xc2);
    assert(ans[5] == 0x23);
    for i in 0..5 {
        assert(ans[i] == 0);
    }
    std::println(ans);
}