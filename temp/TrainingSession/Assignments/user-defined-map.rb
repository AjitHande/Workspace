class Array
	def my_map
        new_array = []
		self.each_index {|i| new_array[i] = yield self.at(i)}
        new_array
    end
end

array = [1,2,3]
puts array.my_map {|x| x*1}
puts
puts array
puts
puts array.map {|x| x+1}

# array = [{ language: 'ruby', framework: 'rails' }, {language: 'python', framework: 'django'}, {language: 'ruby', framework: 'rails' }]
# flag = false

# # array.select do |h|
# #     if flag
# #         break
# #     elsif !flag && h[:language] == 'ruby'
# #         puts h
# #         flag = true
# #     end
# # end

# ret = array.select do |h|
#     if h[:language] == 'ruby'
#         return h
#     end
# end
# puts h