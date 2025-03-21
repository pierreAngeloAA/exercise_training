class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    ((0..@n).sum)**2
  end

  def sum_of_squares
    (0..@n).map {|i| i**2}.sum 
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

puts Squares.new(5).difference
