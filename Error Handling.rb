# Code for Error Handling
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

if ARGV.include?("--help")
    puts "First Argument is the First Number"
    puts "Second Argument is the Operator, please choose between + - / *"
    puts "Third Argument is the Second Number"
    exit()
end


# Error Handling
begin # In the block begin to rescue is code that might raise an Error
    firstNumber = Float(ARGV[0])    #With Float() we try to convert the Input String to a Float Value
    secondNumber = Float(ARGV[2])   #If it is no Number (Float, Int ... ) it will cause an Error
                                    #We dont need to write "#{ARGV[0]}" because they already Strings
rescue ArgumentError => e           #The Block rescue to end is the Code that handle the Error
    puts "Error:  is not a Number " #In our Case just a Message
    exit(1)                         #We use exit(1) instead of exit() because it indicate an Error
end                                 

#exit(1) == Signalize an Error
#exit() == Signalize Success


thirdValue = "#{ARGV[1]}"

case thirdValue
when "+"
    sum_method(firstNumber, secondNumber)
when "-"
    dif_method(firstNumber, secondNumber)
when "*"
    product_method(firstNumber, secondNumber)
when "/"
    quotient_method(firstNumber, secondNumber)
else
    puts "Invalid Operator: #{thirdValue}"
end