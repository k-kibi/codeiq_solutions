require 'pp'

def count_prime(num)
  # 0〜numのindexを持つ配列を作る
  list = Array.new(num+1)
  2.upto(num/2) do |i|
    list[i*2] = 1
  end
  prime = 3
  while prime * prime < num
    #puts "prime: #{prime}"
    prime.step(num/prime, 2) do |i|
      list[i*prime] = 1
    end
    #list.each_with_index do |n, i|
    #  print "#{i} " if n.nil?
    #end
    #print "\n"
    prime += 1
    until list[prime].nil?
      prime += 1
    end
  end
  #list.each_with_index do |n, i|
  #  puts "list[#{i}]: #{n.nil?}"
  #end
  result = 0
  # i=0,1 を除去
  list.shift 2
  # i=num を除去
  list.pop
  list.map{ |i| result += 1 if i.nil? }
  result
end

while str = STDIN.gets
  puts count_prime(str.to_i)
end
