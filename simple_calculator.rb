#This is the simple_operators File
#just with Methods and Classes

#Defining a Class with the Keyword class and close the Definitionn of the Class with the Keyword end (line 49)
class Simple_calculator
    # Defining two Instance Variables for the class 
    #(Instance Variable is used to creating Variables that can be used in the whole INSTANCE of the CLASS)
    # Every Instance of a class has his own Values for the Variables
    @first_number
    @second_number
    
    #Defining a initialize method without paramters to set standard values for the Instance Variables
    #def is the Keyword to creating a Method and the keyword end is used to close the method
    def initialize ()
        @firstNumber = 0.00
        @secondNumber = 0.00
    end

    #Defining a Method to ask for an Input
    # () by Methods are optional
    def input
        puts "Whats the first number: "
        @firstNumber = gets.chomp.to_f

        puts "Whats the second number: "
        @secondNumber = gets.chomp.to_f
    end

    # The next Methods are calculating the Results 
    def sum_method
        sum = @firstNumber + @secondNumber
        puts "#{@firstNumber} + #{@secondNumber} = #{sum}"
    end

    def dif_method
        dif = @firstNumber - @secondNumber
        puts "#{@firstNumber} - #{@secondNumber} = #{dif}"
    end

    def product_method
        product = @firstNumber * @secondNumber
        puts "#{@firstNumber} * #{@secondNumber} = #{product}"
    end

    def quotient_method
        quotient = @firstNumber / @secondNumber
        puts "#{@firstNumber} / #{@secondNumber} = #{quotient}"
    end
end


#Creating an Instance of the Class with the Method .new
the_class = Simple_calculator.new

#Calling our Method .input of the Instance the_class
the_class.input

#Calling out Methods of the Instance the_class to calculate the Results
the_class.sum_method
the_class.dif_method
the_class.product_method
the_class.quotient_method
