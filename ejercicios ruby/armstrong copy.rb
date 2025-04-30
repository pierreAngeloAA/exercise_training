module ArmstrongNumbers
  def self.include?(number)
    power = number.to_s.split("").size
    number == number.to_s.split("").map{|i| i.to_i ** power}.sum
  end
end

puts ArmstrongNumbers.include?(153)