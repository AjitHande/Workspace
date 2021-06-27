class String
	def integer?
		Integer(self) != nil rescue false
	end
end

print "Enter value 1: "
a = gets.chomp
while !(a.integer?)
	puts "Value entered is not integer"
	print "Enter value 1: "
	a = gets.chomp
end

puts ""

print "Enter value 2: "
b = gets.chomp
while !(b.integer?)
	puts "Value entered is not integer"
	print "Enter value 2: "
	b = gets.chomp
end

puts ""

c = a.to_i+b.to_i
puts "Sum is " + c.to_s
