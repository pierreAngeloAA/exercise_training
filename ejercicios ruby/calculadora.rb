# puts "please enter your first number"
# first_number = gets.chomp
# puts "please enter your second number"
# second_number = gets.chomp

# if second_number.to_i < 3
#     puts "The first number multiplied by the second number is: #{first_number.to_f * second_number.to_f}"
# end

# def multiply(first_number,second_number)
#     puts "The first number multiplied by the second number is: #{first_number.to_f * second_number.to_f}"
# end

# multiply(2, 4)

# x = (1..10).to_a
# p x.to_a.shuffle

class SimpleCalculator
  class UnsupportedOperation < StandardError; end
  
  def self.calculate(first_operand, second_operand, operation)
    begin
      unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
          raise ArgumentError.new("Operands must be numeric. Received: #{first_operand.inspect}, #{second_operand.inspect}")
      end
      
      case operation
      when "+"
        value = first_operand + second_operand 
      when "*"
        value = first_operand * second_operand
      when "/"
        raise ZeroDivisionError.new("Division by zero is not allowed.") if second_operand == 0
        value = first_operand / second_operand
      else
        raise UnsupportedOperation.new("Operation #{operation} is not supported.")
      end
      "#{first_operand} #{operation} #{second_operand} = #{value}"
    rescue ZeroDivisionError => e
      e.message
    end
  end
end

puts SimpleCalculator.calculate(16, 51, "-")
puts SimpleCalculator.calculate(2, 5, "+")
puts SimpleCalculator.calculate(20, 4, "/")
puts SimpleCalculator.calculate(16, 0, "/")