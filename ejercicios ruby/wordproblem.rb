class WordProblem
  OPERATIONS = {
    "plus" => :+,
    "minus" => :-,
    "multiplied by" => :*,
    "divided by" => :/
  }
  def initialize(question)
    @question = question
  end

  def answer
    tokens = @question.scan(/-?\d+|plus|minus|multiplied by|divided by/)

    raise ArgumentError, "Pregunta no válida" if tokens.empty? || tokens.size < 3

    result = tokens.shift.to_i

    until tokens.empty?
      operation = tokens.shift
      number = tokens.shift.to_i

      raise ArgumentError, "Operación no válida" unless OPERATIONS.key?(operation)

      result = result.send(OPERATIONS[operation], number)
    end
    result
  end
end


puts WordProblem.new("What is 2 multiplied by -2 multiplied by 3?").answer

problem = WordProblem.new("What is -3 plus 7 multiplied by -2?")
puts "You should ignore order of precedence. -3 + 7 * -2 = -8, not #{problem.answer}"