#A Basic Output to ask for your name
puts "Whats your name: "
#the Method .chomp remove the newline Character
name = gets.chomp
#The Syntax #{} evaluated the value of name
greeting = "Hello my name is #{name}"
#Output of the first greeting with #
puts "#{greeting}"
#New greeting without the #{} Syntax
greeting = "Hello my name is name"
#Output of the new greeting
puts "#{greeting}"