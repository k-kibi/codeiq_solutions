def factorial(to, from = 0)
  ((from+1)..to).inject 1, :*
end

n = gets.chomp.to_i

w = 1
limit = n/2
while w <= limit
  pattern = factorial(n, n-w) / factorial(w)
  if pattern % 2 == 0
    puts w
    exit
  end
  w += 1
end

puts 0
