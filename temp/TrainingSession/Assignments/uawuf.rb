require "set"

class String
	def integer?
		Integer(self) != nil rescue false
	end
end

#---------------Union Method------------------------------------------
puts
p "Union Method"

print "Number of values to enter: "
count = gets.chomp

while !(count.integer?)
	print "Number of values to enter: "
	count = gets.chomp
end
count = count.to_i

arr = []
for i in 1..count
	arr.push(gets.chomp)
end

#arr2 = arr.select{|x| arr.count(x)>1}
#p (arr2)

#arr.select! {|x| arr.count(x)==1}
#p (arr)

print "Unique array is "
p (arr | [])

puts
puts

=begin
#---------------Check Uniqueness before insertion-----------------
p "Check uniqueness before insertion method"

print "Number of values to enter: "
count = gets.chomp

while !(count.integer?)
        print "Number of values to enter: "
        count = gets.chomp
end
count = count.to_i

arr = []
for i in 1..count
	inp=gets.chomp
	if(!arr.include?(inp))
		arr.push(inp)
	end
end

print "Unique array is "
p  arr

puts
puts
#---------------Set Method---------------------------------
p "Set Method"

print "Number of values to enter: "
count = gets.chomp

while !(count.integer?)
        print "Number of values to enter: "
        count = gets.chomp
end
count = count.to_i

arr = []
for i in 1..count
        arr.push(gets.chomp)
end

set1 = arr.to_set
arr = set1.to_a

print "Unique array is "
p arr
=end
