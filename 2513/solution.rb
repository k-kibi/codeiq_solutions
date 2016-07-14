n = gets.to_i - 1
a = gets.split(' ').map { |s| s.to_i }

n.times do |i|
	((i+1)..n).each do |j|
		next unless a[j] + a[i] == 256
		puts 'yes'
		exit
	end
end

puts 'no'
