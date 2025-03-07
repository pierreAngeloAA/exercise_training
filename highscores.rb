class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def lapersonal_best
    @scores.sort.last
  end

  def personal_top_three
    @scores.sort.reverse.first(3)
  end

  def latest_is_personal_best?
    @scores.last == lapersonal_best
  end
end
scores = [70, 40, 10, 100]
# puts HighScores.new(scores).scores

# puts HighScores.new(scores).latest

# puts HighScores.new(scores).scores

# puts HighScores.new(scores).lapersonal_best
# puts "#{HighScores.new(scores).personal_top_three}"

puts HighScores.new(scores).latest_is_personal_best?