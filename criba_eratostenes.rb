class Sieve

  def initialize(n)
    @n = n
  end

  def primes
    primes = []
    (2..@n).each do |i|
      acount = 0
      (2..i).each do |j|
        acount += 1 if i % j == 0
      end
      primes << i if acount < 2
    end
    primes
  end
end

puts Sieve.new(1000).primes