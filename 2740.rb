while line = gets
  line.chomp!
  while line.sub!(/(.)(.)\1/, '\2'); end
  puts line
end
