module CollatzConjecture
  def self.steps(item, contador = 0)
    raise ArgumentError, "El número debe ser positivo" if item <= 0
    return contador if item == 1

    if item.even?
      item = item/2
    else
      item = (item * 3) + 1
    end
    steps(item, contador + 1)
  end
end

puts "#{CollatzConjecture.steps(-16)}"