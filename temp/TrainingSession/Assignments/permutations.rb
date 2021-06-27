def number_shuffle(number)
  number.to_s.chars.map {|digit| digit.to_i}.permutation.to_a.map {|arr| arr.inject("") {|sum, num| sum +num.to_s } }.map {|num| num.to_i }
end

p number_shuffle(123)
puts
p number_shuffle(2134)
