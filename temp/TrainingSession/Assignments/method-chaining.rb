class User
    def initialize
        @result = "Well,"
    end

    def language(lang)
        if @result == "Well, "
            @result += " and"
        end
        @result += " #{lang} is the language"
        self
    end

    def framework(fw)
        if @result == "Well, "
            @result += " and"
        end
        @result += " #{fw} is the framework."
        self
    end

    def learn
        @result += " You gotta learn it."
        self
    end

    def to_s
        @result
    end
end

@user = User.new
puts @user.language("Ruby").framework("Rails").learn