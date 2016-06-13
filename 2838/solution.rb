chair_total, n = gets.split(',').map { |s| s.to_i }
constituency = []
n.times do
  constituency << gets.to_i
end

base_d = constituency.inject(:+).to_f / chair_total
d = base_d
div = 0.05
posi = nil
chairs = []
loop do
  constituency.each do |c|
    chairs << (c / d).ceil
  end
  c_total = chairs.inject(:+)
  if c_total == chair_total
    chairs.each { |c| puts c }
    break
  else
    if c_total < chair_total
      if posi == false
        div *= 0.8
      end
      d -= (base_d * div).to_i
      posi = true
    else
      if posi == true
        div *= 0.8
      end
      d += (base_d * div).to_i
      posi = false
    end 
    chairs = []
    next
  end
end
