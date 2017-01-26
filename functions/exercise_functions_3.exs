fizz_buzz = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,t -> t
end

fb_solution = fn
a -> fizz_buzz.(rem(a,3), rem(a,5), a)
end

IO.puts fb_solution.(10)
IO.puts fb_solution.(11)
IO.puts fb_solution.(12)
IO.puts fb_solution.(13)
IO.puts fb_solution.(14)
IO.puts fb_solution.(15)
IO.puts fb_solution.(16)
