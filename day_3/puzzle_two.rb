require 'set'
input = File.read('input.txt', chomp: true)
santa = [[0, 0]]
robo_santa = [[0, 0]]
input.chars.each_with_index do |d, i|
  locations = (i % 2).zero? ? santa : robo_santa
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

puts santa.concat(robo_santa).to_set.size
