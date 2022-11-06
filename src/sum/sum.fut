entry sum_nats (n: i32): i32 =
  reduce (+) 0 (1...n)
