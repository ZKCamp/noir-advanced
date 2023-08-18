
// Unoptimized 
// Gates - 2761, Opcodes - 9
fn main(x: Field) {
    assert (x as u5 >= 25);
    assert (x as u5 < 30);
}

// Optimized
// Gates - 10, Opcodes - 10
// fn main(x: Field) {
//     assert((x - 25)* (x - 26) * (x - 27) * (x - 28)*(x-29) == 0);
// }


#[test]
fn test_golfing1() {

    for i in 25..30 {
        main(i);
    }

}