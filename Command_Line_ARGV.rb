#Methods to calculate the Result without a @ and with ()
def sum_method(firstNumber, secondNumber)
    sum = firstNumber + secondNumber
    puts "#{firstNumber} + #{secondNumber} = #{sum}"
end

def dif_method(firstNumber, secondNumber)
    dif = firstNumber - secondNumber
    puts "#{firstNumber} - #{secondNumber} = #{dif}"
end

def product_method(firstNumber, secondNumber)
    product = firstNumber * secondNumber
    puts "#{firstNumber} * #{secondNumber} = #{product}"
end

def quotient_method(firstNumber, secondNumber)
    quotient = firstNumber / secondNumber
    puts "#{firstNumber} / #{secondNumber} = #{quotient}"
end

#Inputs ARGV Arguments (the number is the Position in the Command Line)
firstNumber = Float(ARGV[0])           
secondNumber = Float(ARGV[2])
#We do not need the "#{}" Syntax because we dont want to use string interpolation
#Instead we use Float to convert the Values to Float 
thirdValue = "#{ARGV[1]}"

#Help Message to understand the Arguments
if ARGV.include?("--help")
    puts "First Argument is the First Number"
    puts "Second Argument is the Operator, please choose between + - / *"
    puts "Third Argument is the Second Number"

    #Exit the Program
    exit
end

#Case Instruction to find the right Method for the Calculation
case thirdValue
when "+"
    sum_method(firstNumber, secondNumber)
when "-"
    dif_method(firstNumber, secondNumber)
when "*"
    product_method(firstNumber, secondNumber)
when "/"
    quotient_method(firstNumber, secondNumber)
else # If we cant Calculate it we send a simple Error Message
    puts "Invalid Operator: #{thirdValue}"
end