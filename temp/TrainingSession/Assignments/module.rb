module Mod
    def my_method
        puts "Module method"
    end
end

module Mod2
    def my_method
        puts "Module method 2"
    end
end

class UserA
    # include Mod2
    prepend Mod

    def my_method
        # super
        puts "User A method"
    end
end

class UserB < UserA
    # def my_method
    #     puts "User B method"
    # end
end

UserB.new.my_method

# UserB.my_method