#digits- Returns the array inluding the digits extracted by place-value notation with radix base of int
p 12345.digits
puts".............."
p 12345.to_s.chars.map(&:to_i).reverse
puts "........."
p 234.digits(100) # setting base 100
puts"................"
#base should be greater than or equal to 2
puts "executing -34324.digit(8)"
begin
puts -34324.digits(8)
rescue => error
p error.message
end

