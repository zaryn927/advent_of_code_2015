count = 0

File.foreach('input.txt', chomp: true) do |line|
  two_twice = line.match?(/([a-z][a-z])\w*\1/)
  alternating = line.match?(/([a-z])[a-z]\1/)
  count += 1 if two_twice && alternating
end

puts count
