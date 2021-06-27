score = {"Kiran"=> 98, "Ravi"=> 83, "Surya"=>79, "Bhaskar"=>88}
puts score

puts score["Kiran"]
puts score["Ajay"]

score.default = 35
puts score["Ajay"]
