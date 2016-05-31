# @see https://codeiq.jp/q/1679

def palindrome?(str)
  (str.length/2).times do |i|
    return false unless str[i] == str[-(i+1)]
  end
  true
end

m, n = gets.chomp.split(',').map { |item| item.to_i }

x = 10
loop do
  base_m = x.to_s m
  base_n = x.to_s n
  if palindrome?(base_m) && palindrome?(base_n)
    puts x
    exit
  end
  x += 1
end
