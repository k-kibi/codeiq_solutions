def validate_mynumber(num)
  if num =~ /\A[0-9]{11}\Z/
    # チェックデジット1桁の出力
    check_digit(num)
  elsif num =~ /\A[0-9]{12}\Z/
    # チェックデジットの正誤判定
    check_digit(num[0..10]) == num[11].to_i ? 'OK' : 'NG'
  else
    'Error'
  end
end

def check_digit(num)
  sum = 0
  1.upto(11) do |n|
    digit = num[11-n].to_i
    if n < 7
      sum += digit * (n + 1)
    else
      sum += digit * (n - 5)
    end
  end
  mod = sum % 11
  if mod <= 1
    0
  else
    11 - mod
  end
end

while str = STDIN.gets
  puts validate_mynumber(str.chomp)
end
