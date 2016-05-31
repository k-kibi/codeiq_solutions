# @see https://codeiq.jp/q/2024

fares, passengers = gets.split ':'
fares = fares.split(',').map { |item| item.to_i }
adults = passengers.count 'A'
infant = passengers.count 'I'
children = passengers.count('C') + [infant - adults * 2, 0].max

total = 0
fares.each do |fare|
  child_fare = (fare/20.0).ceil * 10
  total += fare * adults + child_fare * children
end

puts total
