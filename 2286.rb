# @see https://codeiq.jp/q/2286

class Filename
  attr_accessor :full, :base, :number, :ext

  def initialize(str)
    @full = str
    name, @ext = str.split '.'
    if m = name.match(/([0-9]+)$/)
      @number = m[1]
      @base = name[0, name.length - @number.length]
    else
      @base = name
    end
  end
end

files = []
while line = gets
  files << Filename.new(line)
end

files.sort! do |a, b|
  (a.base <=> b.base).nonzero? ||
    (a.number.to_i <=> b.number.to_i).nonzero? ||
    (a.number <=> b.number).nonzero? ||
    (a.ext <=> b.ext)
end

files.each do |file|
  puts file.full
end
