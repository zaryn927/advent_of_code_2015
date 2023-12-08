$lights = Array.new(1000, Array.new(1000, false))

def alter(outer_range, inner_range, type)
  match = nil
  no_match = Proc.new(&:itself)
  case type
  when 'on'
    match = proc { true }
  when 'off'
    match = proc { false }
  when 'toggle'
    match = Proc.new(&:!)
  end

  $lights[outer_range] = $lights[outer_range].map do |e|
    e.map.with_index do |f, i|
      inner_range.include?(i) ? match[f] : no_match[f]
    end
  end
end

File.foreach('input.txt', chomp: true) do |line|
  type, origin, destination = line.split(/turn|\s+|through/).reject(&:empty?)
  origin = origin.split(',').map(&:to_i)
  destination = destination.split(',').map(&:to_i)
  alter(origin[0]..destination[0], origin[1]..destination[1], type)
end

puts $lights.flatten.count(true)
