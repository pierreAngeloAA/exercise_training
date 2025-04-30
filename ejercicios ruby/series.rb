class Series
	attr_accessor :cadena

  def initialize(cadena)
    raise ArgumentError.new if cadena == ""
		@cadena = cadena
	end

	def slices(n)
		raise ArgumentError.new if n > @cadena.length
    raise ArgumentError.new if n <= 0
		n = n-1
		contador = 0
		result = []
		(1..@cadena.length - n).each do |item| 
			result << @cadena[contador..n]
			contador += 1
			n += 1
		end
		result
	end
end

series = Series.new("1234567890987654321")
puts "#{series.cadena}"
puts series.cadena.size

puts series.slices(8)
