class User
    attr_accessor :language, :framework

    def initialize(args)
        @result = "Well,"

        # args.each_key do |k, v|
        #     self.send("#{k}=", args[k])
        # end
        # self.instance_eval do
            args.keys.each do |k|
                self.class.send(:define_method, "#{k}") do
                    @result += " #{args[k]} is the #{k}"
                    self
                end
            end
        # end
    end

    def to_s
        @result
    end
end

test = {language: "Ruby",
framework: "Rails"}

@user = User.new(test)
puts @user.language.framework