while str = STDIN.gets do
  answer = 0
  for i in 1..(str.to_i) do
    i_str = i.to_s
    puts "i_str: #{i_str}"
    puts "i_str.gsub: #{i_str.gsub(/7/, '')}"
    answer += i_str.size - i_str.gsub(/7/, '').size
  end
  puts answer
end
