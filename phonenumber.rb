class PhoneNumber
  def self.clean(number)

    digits = number.gsub(/\D/, '')

    return nil if digits.length < 10 || digits.length > 11

    if digits.length == 11
      return nil unless digits.start_with?('1')
      digits = digits[1..] # Remover el '1' inicial
    end

    area_code = digits[0]
    exchange_code = digits[3]
    return nil if area_code < '2' || exchange_code < '2'

    digits
  end
end

puts PhoneNumber.clean("+1 (223) 456-7890")