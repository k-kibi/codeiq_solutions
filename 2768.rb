input = gets.chomp.split ' '
n = input[1].to_i
opts = input[2..3]

if opts.include? '-e'
  n *= 2
end

result = 'sho'
n.times do
  result += 'hey'
end

if opts.include? '-q'
  result += '?'
end

puts result
