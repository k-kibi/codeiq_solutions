def multiples_of_nine(digit, num)
  #p "digit:#{digit}, num:#{num}"
  return 0 if digit < 3
  if digit == 3
    return [10, 12, 12, 10, 6, 3, 2, 3, 6][num % 9]
  end
  count = 0
  (1..4).each do |i|
    count += multiples_of_nine(digit - 1, num + i)
  end
  #p "count: #{count}"
  count
end

while line = gets
  puts multiples_of_nine(line.to_i, 0)
end
