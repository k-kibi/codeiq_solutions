# 10進数で表記した時に、同じ数字を含まない
def scrattered?(num)
  digits = []
  num.to_s.each_char do |c|
    return false if digits.include? c
    digits << c
  end
  true
end

# n乗した結果の 10進数表記に、元の数に現れる数字が含まれない
def free?(num1, num2)
  chars = []
  num1.to_s.each_char do |c|
    chars << c
  end
  num2.to_s.each_char do |c|
    return false if chars.include? c
  end
  true
end

m, n = gets.split(',').map { |s| s.to_i }

begin
  m -= 1
  next unless scrattered? m
  next unless free? m, m ** n
  puts m
  exit
end while m > 1

puts '-'
