nums = []
cnt = 0

while line = gets
  num = line.to_i
  cnt += 1

  if nums.empty?
    nums << num
    puts num
    next
  end

  nums.each_with_index do |n, i|
    if num < n
      p "index: #{i}"
      nums.insert i, num
      break
    end
  end

  if cnt % 2 == 0
    mid = cnt / 2
    p nums
    puts (nums[mid-1] + nums[mid]) / 2
  else
    puts nums[cnt / 2]
  end
end
