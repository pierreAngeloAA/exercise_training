puts "prime factors"

class PrimeFactors

  def self.of(number)
    divisores = []
    divisor = 2

    while number > 1
      if number % divisor == 0
        divisores << divisor
        number /= divisor
      else
        divisor += 1
      end
    end
    divisores
  end
end

puts PrimeFactors.of(901_255)