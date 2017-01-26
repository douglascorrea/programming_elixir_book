fizz_buzz = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Buzz"
  _,_,t -> t
end

IO.puts fizz_buzz.(0,0,0)
IO.puts fizz_buzz.(0,0,"banana")
IO.puts fizz_buzz.(0,"maca", "vaca")
IO.puts fizz_buzz.(1,1,"printa")
