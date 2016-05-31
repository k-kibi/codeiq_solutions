# @see https://codeiq.jp/q/2082

require 'date'

line = gets.chomp
year = line[0, 4].to_i
month = line[4, 2].to_i
date = Date.new year, month, 1
wday = date.wday

calendar = []

if [4, 6, 9, 11].include? month
  lastday = 30
elsif month == 2
  lastday = 28 + (1 / (year % 4 + 1)) * (1 - 1 / (year % 100 + 1)) + (1 / (year % 400 + 1))
else
  lastday = 31
end

(1..lastday).each do |d|
  calendar << "%02d"%[d]
end

# sunday start
wday.times { calendar.unshift '  ' }
calendar.each_slice(7).each do |week|
  puts week.join(',')
end

# monday start
if wday == 0
  6.times { calendar.unshift '  ' }
else
  calendar.shift
end
calendar.each_slice(7).each do |week|
  puts week.join(',')
end

