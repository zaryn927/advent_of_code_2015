count = 0

File.foreach('input.txt', chomp: true) do |line|
  vowels = line.chars.count { |c| %w[a e i o u].include?(c) }
  double = line.match?(/([a-z])\1/)
  forbidden = line.match?(/ab|cd|pq|xy/)
  count += 1 if vowels >= 3 && double && !forbidden
end

puts count
