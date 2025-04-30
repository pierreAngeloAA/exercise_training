class Series
  def initialize(digits)
    raise ArgumentError, "Invalid input: only digits allowed" unless digits.match?(/\A\d*\z/)
    @digits = digits.chars.map(&:to_i)
  end

  def largest_product(span)
    raise ArgumentError, "span no puede ser negativo" if span < 0
    raise ArgumentError, "digitos vacios" if span > @digits.length
    @digits.each_cons(span).map { |series| series.reduce(:*) }.max || 0
  end
end

puts Series.new("0123456789").largest_product(5)
# puts Series.new("1234a5").largest_product(2)

enu1 = (2..6) 
 
# Prints 
puts enu1.max   
puts enu1.max(2) 

# SAlida
# ==> 6
# ==> [6, 5]

puts [4, 5, 7, 10].minmax
#=> [4, 10]


people = {'joe' => 21, 'bill' => 35, 'sally' => 24}

people.min_by { |name, age| age } #=> ["joe", 21]
people.max_by { |name, age| age } #=> ["bill", 35]


nums = [1, 2, 3, 4, 5]
sum = nums.reduce(0) { |acc, num| acc + num }
puts sum  # ➝ 15

# acc comienza en 0.
# En cada paso, suma num al acumulador.

nums = [10, 25, 3, 42, 7]
max_number = nums.reduce { |acc, num| acc > num ? acc : num }
puts max_number  # ➝ 42

# acc empieza con el primer valor del array.
# Compara cada número con acc y guarda el mayor.

words = ["Hola", "mundo", "desde", "Ruby"]
sentence = words.reduce("") { |acc, word| acc + " " + word }
puts sentence.strip  # ➝ "Hola mundo desde Ruby"

# acc comienza como "" (una cadena vacía).
# En cada paso, agrega la palabra con un espacio.

