def symmetric?(str)
  last = str.size - 1
  (str.size/2).times do |i|
    return false unless str[i] == str[last-i]
  end
  true
end

min, max = gets.chomp.split(',').map { |item| item.to_i }
cnt = 0
((min+1)...max).each do |i|
  cnt += 1 if symmetric? i.to_s(2)
end

puts cnt
