class BaseConverter
  def self.convert(input_base, digits, output_base)

    raise ArgumentError, "Las bases deben ser mayores que 1" if input_base < 2 || output_base < 2
    raise ArgumentError, "Dígitos inválidos" if digits.any? { |d| d < 0 || d >= input_base }

    decimal_value = digits.reduce(0) { |sum, digit| sum * input_base + digit }

    return [0] if decimal_value == 0

    result = []
    while decimal_value > 0
      result.unshift(decimal_value % output_base)
      decimal_value /= output_base
    end

    result
  end
end


digits = [1]
input_base = 2
output_base = 10
expected = [1]
puts BaseConverter.convert(input_base, digits, output_base)



digits = [1, 0, 1]
input_base = 2
output_base = 10
expected = [5]
puts BaseConverter.convert(input_base, digits, output_base)