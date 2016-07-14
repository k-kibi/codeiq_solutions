n, m = gets.split(' ').map { |s| s.to_i }

answer = 0
(2**m-1..n).each do |i|
  answer += 1 if i.to_s(2).count('1') == m
end
puts answer
