# frozen_string_literal: true

class String
  def integer?
    !Integer(self).nil?
  rescue StandardError
    false
  end
end

def get_integer(*str)
  num = ''
  str[0] = 'Enter an integer value' if str.length != 1
  until num.integer?
    print "#{str[0]}: "
    num = gets.chomp
  end
  num.to_i
end

num = get_integer('Number of entries')
# puts num

data = Hash.new(0)
num.times do
  puts '--------------------------------------------'

  print 'Item Name: '
  item_name = gets.chomp
  item_name = item_name.capitalize
  # puts item_name

  price = get_integer('Price')
  quantity = get_integer('Quantity')

  data[[item_name, price]] += quantity

  puts '--------------------------------------------'
end

puts data

file = File.open('order.csv', 'a')

file.write("Item,Price,Quantity\n")
data.each do |key, value|
  file.write("#{key[0]},#{key[1]},#{value}\n")
end
