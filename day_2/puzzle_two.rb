total = 0

File.foreach('input.txt', chomp: true) do |line|
  dimensions = line.split('x').map(&:to_i)
  perimeter = dimensions.min(2).sum * 2
  bow = dimensions.inject(:*)
  total += perimeter + bow
end

puts total
