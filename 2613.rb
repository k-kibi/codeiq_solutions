def sentence(str, pos)
  pos = str.index /[!\?\.] /, pos
  return str if pos.nil?
  if str[pos] == '.'
    # Mr., Ms., Mrs., Mt. の場合は文末にならない
    pos2 = str[[pos-3, 0].max, 4].index /M(r|s|rs|t)\./, 0
    if pos2.nil?
      # .の前の単語が数字しかない場合は文末にならない
      if str[0, pos].split(' ').last =~ /\A\n?[0-9]+\Z/
        pos += 2
      else
        str.insert pos+2, "\n"
        pos += 3
      end
    else
      pos += 2
    end
  else
    str.insert pos+2, "\n"
    # [!?]＋半角スペース＋改行の3文字分シフト
    pos += 3
  end

  sentence str, pos
end

while str = STDIN.gets.chomp
  puts sentence(str, 0)
end
