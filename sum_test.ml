open OUnit2
open Sum


let tests = "test suite for sum" >::: [
    "empty" >:: (fun  _ -> assert_equal 0 (sum []) ~printer:string_of_int);
    "one" >:: (fun _ -> assert_equal 1 (sum [1]) ~printer:string_of_int);
]


let _ = run_test_tt_main tests
