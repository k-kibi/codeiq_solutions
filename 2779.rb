def factorial(num)
  (1..num).inject 1, :*
end

def combination(n, r)
  return 0 if n < r
  factorial(n) / (factorial(n - r) * factorial(r))
end

n = gets.to_i
puts factorial(n-1) * combination(n, 4)
