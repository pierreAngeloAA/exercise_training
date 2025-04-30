class ComplexNumber
  attr_reader :real, :imaginary

  def initialize(real, imaginary = 0)
    @real = real
    @imaginary = imaginary
  end

  def +(other)
    other = ComplexNumber.new(other) if other.is_a?(Numeric)
    ComplexNumber.new(@real + other.real, @imaginary + other.imaginary)
  end

  def -(other)
    other = ComplexNumber.new(other) if other.is_a?(Numeric)
    ComplexNumber.new(@real - other.real, @imaginary - other.imaginary)
  end

  def *(other)
    other = ComplexNumber.new(other) if other.is_a?(Numeric)
    real_part = @real * other.real - @imaginary * other.imaginary
    imaginary_part = @imaginary * other.real + @real * other.imaginary
    ComplexNumber.new(real_part, imaginary_part)
  end

  def /(other)
    other = ComplexNumber.new(other) if other.is_a?(Numeric)
    denominator = other.real**2 + other.imaginary**2
    real_part = (@real * other.real + @imaginary * other.imaginary) / denominator
    imaginary_part = (@imaginary * other.real - @real * other.imaginary) / denominator
    ComplexNumber.new(real_part, imaginary_part)
  end

  def conjugate
    ComplexNumber.new(@real, -@imaginary)
  end

  def abs
    Math.sqrt(@real**2 + @imaginary**2)
  end

  def exp
    magnitude = Math.exp(@real)
    ComplexNumber.new(magnitude * Math.cos(@imaginary), magnitude * Math.sin(@imaginary))
  end

  def ==(other)
    other.is_a?(ComplexNumber) && @real == other.real && @imaginary == other.imaginary
  end

  def to_s
    "#{@real} + #{@imaginary}i"
  end
end
