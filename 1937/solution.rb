# @see https://codeiq.jp/q/1937

fares, passengers = gets.split ':'
fares = fares.split(',').map { |item| item.to_i }

ONEDAY_PASS = { 'An' => 910, 'Ax' => 510, 'Cn' => 460, 'Cx' => 260, 'In' => 460, 'Ix' => 260 }

counter = { 'An' => 0, 'Ax' => 0, 'Cn' => 0, 'Cx' => 0, 'In' => 0, 'Ix' => 0 }
fare_counter = { 'An' => 0, 'Ax' => 0, 'Cn' => 0, 'Cx' => 0, 'In' => 0, 'Ix' => 0 }

adults = passengers.count('A') * 2

passengers.chomp.split(',').each do |ps|
  next if ps[1] == 'p'
  counter[ps] += 1
end

while 0 < counter['In'] && 0 < adults
  counter['In'] -= 1
  adults -= 1
end
while 0 < counter['Ix'] && 0 < adults
  counter['Ix'] -= 1
  adults -= 1
end

fares.each do |fare|
  fare_extra = (fare * 0.056).ceil * 10
  fare_child = (fare * 0.050).ceil * 10
  fare_child_extra = (fare_child * 0.056).ceil * 10
  fare_counter['An'] += fare
  fare_counter['Ax'] += fare_extra
  fare_counter['Cn'] += fare_child
  fare_counter['Cx'] += fare_child_extra
  fare_counter['In'] += fare_child
  fare_counter['Ix'] += fare_child_extra
end

puts [
  [fare_counter['An'], ONEDAY_PASS['An']].min * counter['An'],
  [fare_counter['Ax'], ONEDAY_PASS['Ax']].min * counter['Ax'],
  [fare_counter['Cn'], ONEDAY_PASS['Cn']].min * counter['Cn'],
  [fare_counter['Cx'], ONEDAY_PASS['Cx']].min * counter['Cx'],
  [fare_counter['In'], ONEDAY_PASS['In']].min * counter['In'],
  [fare_counter['Ix'], ONEDAY_PASS['Ix']].min * counter['Ix'],
].inject(0, :+)
