use dep::std::ec::sqrt;
use dep::std;

// Unoptimized
// Gates - 1520

// fn main(x: Field) -> pub  Field {
//     sqrt(x)
// }

// Optimized
// Gates - 6
fn main(x: Field) -> pub Field {
    let z = sqrt_u(x);
    assert(z * z == x);
    z
}

unconstrained fn sqrt_u(x: Field) -> Field {
    sqrt(x)
}


#[test] 
fn test_sqrt() {
    let ans = main(100);
    std::println(ans);
    assert(ans == 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593effffff7);
}