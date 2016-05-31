n = gets.to_i
cnt = 0
(0..n).each do |i|
  cnt += 1 unless i.to_s(3).include?('2')
end
puts cnt
