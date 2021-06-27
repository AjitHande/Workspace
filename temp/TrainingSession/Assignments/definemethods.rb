# frozen_string_literal: true

#--------------------------------------------------------------------------
# Function Definitions

def method_without_parameters
  puts 'No parameters function called'
end

def method_with_one_parameter(param1)
  puts 'Method with one parameter is called.'
  puts "The parameter passed is #{param1}"
end

def method_with_default_parameter(param1 = 'default_value1', param2 = 'default_value2')
  puts "Value of parameter one is #{param1}"
  puts "Value of parameter two is #{param2}"
end

def method_with_variable_parameters(*param)
  (0..(param.length - 1)).each do |i|
    puts "Value of parameter #{i} is #{param[i]}"
  end
end

#---------------------------------------------------------------------------
# Functions Calls

method_without_parameters
puts

method_with_one_parameter 'I am a Parameter!'
puts

begin
  p 'Called parameterised function with no parameter'
  method_with_one_parameter
rescue StandardError => e
  puts "ERROR: #{e.message}"
end
puts

p 'Two parameters passed'
method_with_default_parameter 'Hello', 'World'
puts

p 'One parameter passed'
method_with_default_parameter 'Hello'
puts

p 'No parameter passed'
method_with_default_parameter
puts

p 'Three parameters passed'
method_with_variable_parameters 'Say', 'Hello', 'World'
puts

p 'One parameter passed'
method_with_variable_parameters 'Hello World'
puts

p 'No parameter passed'
method_with_variable_parameters
puts
