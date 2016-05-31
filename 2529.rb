require 'prime'

def f(a, b, c, d)
  a = deg2rad(a)
  b = deg2rad(b)
  c = deg2rad(c)
  d = deg2rad(d)
  x = rad2deg(Math.atan((Math.sin(a) * Math.sin(c) * Math.sin(b + c+ d)) / (Math.sin(d) * Math.sin(a + b) + Math.sin(a) * Math.sin(c) * Math.cos(b + c + d))))
  (x * (10 ** 6)).round
end

def deg2rad(deg)
  deg.to_f / 180.0 * Math::PI
end

def rad2deg(rad)
  rad.to_f * 180.0 / Math::PI
end

def g(n)
  result = []
  Prime.prime_division(n-1).each do |div|
    sum = 0
    (div[1]+1).times do |e|
      sum += div[0] ** e
    end
    result << sum
  end
  result.inject 1, :*
end

def h(m)
  sum = 0
  (1..m).each do |n|
    sum += n if palindromic?(n)
  end
  sum
end

def palindromic?(m)
  return true if m < 10
  rev_num = 0
  div_num = m
  while div_num != 0
    rev_num *= 10
    rev_num += div_num % 10
    div_num /= 10
  end
  rev_num == m
end

a, b, c, d = gets.chomp.split(' ').map { |item| item.to_i }
p = f(a, b, c, d)
puts "p = #{p}"
q = g(p)
puts "q = #{q}"
r = h(q)
puts r
#puts h(g(f(a, b, c, d)))
