def fibonacci(n)
  
  return [] if n == 0
  return [0] if n == 1
  
  fib_arr = [0, 1]
  while fib_arr.length < n
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end
  fib_arr
  
end