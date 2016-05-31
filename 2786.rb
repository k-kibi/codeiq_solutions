class Point
  attr_reader :x, :y

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

  def inner_product(other)
    self.class.inner_product self, other
  end

  def self.distance(a, b)
    Math.sqrt(distance2 a, b)
  end

  def self.distance2(a, b)
    (b.x - a.x) ** 2 + (b.y - a.y) ** 2
  end

  def self.inner_product(a, b)
    a.x * b.x + a.y * b.y
  end
end

class Circle < Point
  attr_reader :c, :x, :y, :r

  def initialize(x, y, r)
    @c = Point.new x, y
    @x = @c.x
    @y = @c.y
    @r = r.to_f
  end
  
  # 円と線分の交差判定
  # @param [Point] a 線分の端点A
  # @param [Point] b 線分の端点B
  # @return [TrueClass | FalseClass]
  def cross?(a, b)
    a.inner_product(@c)
  end

  def interference(point)
    d = distance2 point
    r = @r ** 2
    if d < r
      1 # 円の内にある
    elsif d == r
      0 # 円周上にある
    else
      -1 # 円の外にある
    end
  end
end

result = []
gets.chomp.split(' ').each do |param|
  tmp, cx, cy, r, ax, ay, bx, by = param.match %r{\((\d+),(\d+)\)(\d+)/\((\d+),(\d+)\)\((\d+),(\d+)\)}
  c = Circle.new cx, cy, r
  a = Point.new ax, ay
  b = Point.new bx, by

  ia = c.interference a
  ib = c.interference b
  if ia == 1 && ib == 1
    result << 'A'
    next
  end

end

