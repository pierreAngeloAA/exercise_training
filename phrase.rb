class Phrase

  def initialize(word)
    @word = word
    @count = Hash.new(0)
  end

  def word_count
    @word.downcase.scan(/\b[\w']+\b/).each do |word|
      @count[word] += 1
    end
    @count
  end
end 

puts Phrase.new("'First: don't laugh. Then: don't cry. You're getting it.'").word_count