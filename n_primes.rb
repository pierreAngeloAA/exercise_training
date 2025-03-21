module Prime
  def self.nth(number)
    raise ArgumentError, "n debe ser mayor que 0" if number < 1

    count = 0
    i = 1

    while count < number
      i += 1
      count += 1 if prime?(i)
    end

    i
  end

  def self.prime?(n)
    return false if n < 2
    return true if n < 4  # 2 y 3 son primos

    return false if n.even?  # Excluimos los pares > 2

    (3..Math.sqrt(n)).step(2).each do |i|
      return false if n % i == 0
    end

    true
  end
end

puts Prime.nth(10_001)
