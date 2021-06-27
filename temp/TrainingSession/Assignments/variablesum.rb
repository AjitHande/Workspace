def sum *arg
  sum = 0
  (0...arg.count).each do |i|
    sum += arg[i]
  end
  sum
end

puts sum 1, 2, 3
puts

puts sum 1, 2
puts

puts sum 1, 2, 3, 5, 6, 7, 8
puts

puts sum
puts
