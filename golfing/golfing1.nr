
// Unoptimized 
// Gates - 2761, Opcodes - 9
fn main(x: Field) {
    assert (x as u4 < 5);
}

// Optimized
// Gates - 10, Opcodes - 10
// fn main(x: Field) {
//     assert(x * (x - 1) * (x - 2) * (x - 3) == 0);
// }


#[test]
fn test_golfing1() {

    for i in 0..5 {
        main(i);
    }

}