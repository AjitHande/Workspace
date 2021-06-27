# module Display
# 	def announce
# 		puts "loser"
# 	end

# 	def self.announce
# 		puts "winner"
# 	end
# end

# class Animal
# 	include Display
# end

# action = "Announce"
# Animal.new.send("#{action.downcase}")

# #Animal.announce

class User
	def email(arg1 = "Default Parent 1", arg2 = "Default Parent 2")
		puts arg1
		puts arg2
	end
end

class UserA < User
	def email(arg1 = "Default 1", arg2 = "Default 2")
		super(arg1, arg2)
	end
end

a = UserA.new
a.email("My argument 1", "My argument 2")