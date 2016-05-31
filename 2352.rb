# @see https://codeiq.jp/q/2352

MAX_DENOMIGATOR = 999999

f = gets.to_f

minimum_error = 1
MAX_DENOMIGATOR.downto(1) do |d|
  n1 = (f * d).to_i
  n2 = n1 + 1

  v1 = n1 / d.to_f
  v2 = n2 / d.to_f
end
