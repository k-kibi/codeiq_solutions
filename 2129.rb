# @see https://codeiq.jp/q/2129

class Student
  attr_accessor :name, :english, :japanese, :math

  def initialize(name, english, japanese, math)
    @name = name
    @english = english.to_i
    @japanese = japanese.to_i
    @math = math.to_i
  end
end

# header
puts gets

students = []
while line = gets
  students << Student.new(*line.split(','))
end

students.sort! do |a, b|
  (b.english <=> a.english).nonzero? ||
    (b.japanese <=> a.japanese).nonzero? ||
    (b.math <=> a.math).nonzero? ||
    (a.name <=> b.name)
end

students.each do |s|
  puts "#{s.name},#{s.english},#{s.japanese},#{s.math}"
end
