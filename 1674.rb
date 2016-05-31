# @see https://codeiq.jp/q/1674

def partition(line, n)
  [line.size, n].min.times do
    (0...line.size).each do |i|
      next if line[i] == 1
      val = line[i] / 2
      line[i] -= val
      line.insert i, val
      break
    end
  end
  line
end

m, n = gets.split(',').map { |item| item.to_i }

count = 0
line = [m]
while line.size < m
  line = partition line, n
  count += 1
end

puts count
