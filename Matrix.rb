puts "Matrix"

class Matrix
	attr_reader :rows, :column

	def initialize(matrix_string)
		@rows = matrix_string.split("\n").map { |row| row.split.map(&:to_i)}
		@columns = @rows.transpose
	end

	def row(index)
    @rows[index - 1]
  end
	
  def column(index)
    @columns[index - 1]
  end
end

matrix = Matrix.new("9 8 7\n5 3 2\n6 6 7")

p matrix.row(1)
# p matrix.column