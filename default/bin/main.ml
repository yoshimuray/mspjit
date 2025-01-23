let rec power n x = 
  match n with
  | 0 -> 1
  | n -> x * power (n - 1) x 
  
let () =
  let iterations = 500000 in
  let base = 3 in 
  let expo = 20 in

  let start_time = Unix.gettimeofday () in

  let _ = for _ = 1 to iterations do
    let _ = power expo base in ()
  done in
  
  let end_time = Unix.gettimeofday () in

  Printf.printf "Execution time: %fs\n" (end_time -. start_time)
