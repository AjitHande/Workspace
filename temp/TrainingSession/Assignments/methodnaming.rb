#-------------------------------------------------------------------
# ! character use in function name

str = "HELLO"
p "Original String"
puts str
puts

p "When we use the non-destructive string function downcase"
puts str.downcase
p "Original String is "
puts str
puts

p "When we use the destructive string function downcase!"
puts str.downcase!
p "Original string is "
puts  str
puts

#--------------------------------------------------------------------
