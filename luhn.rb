class Luhn
  def self.valid?(number)
    number = number.delete(' ')
    return false unless number.match?(/\A\d+\z/) && number.length > 1

    digits = number.chars.reverse.map(&:to_i) 

    sum = digits.each_with_index.sum do |digit, index|
      if index.odd?
        double = digit * 2
        double > 9 ? double - 9 : double
      else
        digit
      end
    end
    sum % 10 == 0
  end
end