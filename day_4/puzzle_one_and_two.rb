require 'digest'

def calculate(zeros)
  (1..).each do |n|
    if Digest::MD5.hexdigest("iwrupvqb#{n}").chars.first(zeros).all? { _1 == '0' }
      puts n
      break
    end
  end
end

puts calculate(5)
puts calculate(6)
