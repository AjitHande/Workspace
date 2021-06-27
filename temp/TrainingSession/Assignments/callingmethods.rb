=begin
def my_method
  yield self
  puts "In my_method"
end

place = "world"

my_method do |obj place|
  place = "block"
  puts "hello #{obj} this is #{place}"
end

puts "place is: #{place}"
=end

def my_method(*a, **kw)
  p arguments: a, keywords: kw
end

my_method(1, 2, '3' => 4, five: 6)
