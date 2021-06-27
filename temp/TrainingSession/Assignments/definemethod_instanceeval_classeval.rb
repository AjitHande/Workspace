hey = "Hey"
bye = "Bye"

hey.class.class_eval do
  def hello
    puts "Hello"
  end
end

hey.hello
bye.hello