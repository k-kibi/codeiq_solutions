def touched_cell(panels, n)
  result = []
  [n-6, n-5, n-4, n-1, n+1, n+4, n+5, n+6].each do |m|
    next if m < 1 || 25 < m
    result << m unless panels[m].nil?
  end
  result
end

panels = Array.new(26)
while line = gets
  nums = line.chomp.split ','
  color = nums.shift
  nums.each do |n|
    panels[n] = color
  end
end

result = {
  'R' => [],
  'B' => [],
  'W' => [],
  'G' => []
}
panels[1..25].each_with_index do |color, n|
  # 上
  m = n - 5
  if m > 0
    unless panels[m].nil?
      result
    end
  end
  # 右上
  # 右
  # 右下
  # 下
  # 左下
  # 左
  # 左上
end
