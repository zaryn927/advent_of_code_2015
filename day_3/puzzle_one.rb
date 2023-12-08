require 'set'
input = File.read('input.txt', chomp: true)
locations = [[0, 0]]
input.chars.each do |d|
  current = locations.last
  case d
  when '^'
    locations << [current.first, current.last + 1]
  when 'v'
    locations << [current.first, current.last - 1]
  when '>'
    locations << [current.first + 1, current.last]
  when '<'
    locations << [current.first - 1, current.last]
  end
end

puts locations.to_set.size
