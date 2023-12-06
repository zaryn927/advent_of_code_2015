input = File.read('input.txt')
level = 0
location = nil
input.each_char.with_index do |c, i|
  level += 1 if c == '('
  level -= 1 if c == ')'
  if level.negative?
    location = i + 1
    break
  end
end

puts location
