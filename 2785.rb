# @see https://codeiq.jp/q/2785

class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x.to_f
    @y = y.to_f
  end

  def distance(other)
    self.class.distance self, other
  end

  def distance2(other)
    self.class.distance2 self, other
  end

  def self.distance(a, b)
    Math.sqrt distance2(a, b)
  end

  def self.distance2(a, b)
    (b.x - a.x) ** 2 + (b.y - a.y) ** 2
  end
end

result = ''
gets.chomp.split(' ').each do |param|
  m = param.match %r{\((\d+),(\d+)\)(\d+)/\((\d+),(\d+)\)(\d+)} 
  a = Point.new m[1], m[2]
  ar = m[3].to_f
  b = Point.new m[4], m[5]
  br = m[6].to_f

  if a.x == b.x && a.y == b.y && ar == br
    result += 'A'
    next
  end

  d = Point.distance2(a, b)
  rd1 = (ar - br) ** 2
  rd2 = (ar + br) ** 2
  if d < rd1
    result += 'B'
  elsif d == rd1
    result += 'C'
  elsif d < rd2
    result += 'D'
  elsif d == rd2
    result += 'E'
  else
    result += 'F'
  end
end

puts result
