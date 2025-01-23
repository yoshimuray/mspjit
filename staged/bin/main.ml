let rec spower n x = 
  match n with 
  | 0 -> .<1>.
  | n -> .<.~x * .~(spower (n - 1) x)>. 

let () =
  let iterations = 500000 in
  let base = 3 in
  let expo = 20 in
  let spowern = Runnative.run (.<fun x -> .~(spower expo .<x>.)>.) in

  let start_time = Unix.gettimeofday () in

  let _ = for _ = 1 to iterations do
    let _ = spowern base in ()
  done in

  let end_time = Unix.gettimeofday () in
  
  Printf.printf "Execution time: %fs\n" (end_time -. start_time)
