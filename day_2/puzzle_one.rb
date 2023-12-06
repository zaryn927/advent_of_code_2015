total = 0

File.foreach('input.txt', chomp: true) do |line|
  (l, w, h) = line.split('x').map(&:to_i)
  area = [2 * l * w, 2 * l * h, 2 * w * h]
  extra = area.min / 2
  total += area.sum + extra
end

puts total
