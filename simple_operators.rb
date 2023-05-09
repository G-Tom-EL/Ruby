#Message to the Command Line
puts "Whats the first number: "

#Asking for an Input and removing the Newline Character
#The Method .to_f is used to 
#convert the input to a floating-point number
firstNumber = gets.chomp.to_f

#Message to the Command Line for the second number
puts "Whats the second number: "
#Asking for an Input and removing the Newline Character
secondNumber = gets.chomp.to_f

#Calculating the Sum
sum = firstNumber + secondNumber
#Output the Result
puts "#{firstNumber} + #{secondNumber} = #{sum}"

#Calculating the Difference
dif = firstNumber - secondNumber
#Output the Result
puts "#{firstNumber} - #{secondNumber} = #{dif}"

#Calculating the Product
product = firstNumber * secondNumber
#Output the Result
puts "#{firstNumber} * #{secondNumber} = #{product}"

#Calculating the Quotient
quotient = firstNumber / secondNumber
#Output the Result
puts "#{firstNumber} / #{secondNumber} = #{quotient}"
