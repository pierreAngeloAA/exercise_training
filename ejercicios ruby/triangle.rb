class Triangle
  def initialize(sides)
    @a, @b, @c = sides.sort 
  end

  def valid?
    @a + @b > @c && @a > 0 
  end

  def equilateral?
    valid? && (@a == @b && @a == @c)
  end

  def isosceles?
    valid? && (@a == @b || @a == @c || @b == @c)
  end

  def scalene?
    valid? && (@a != @b && @a != @c && @b != @c)
  end
end