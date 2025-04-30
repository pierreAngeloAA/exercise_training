module Isogram
  def self.isogram?(input)
    input.downcase.gsub(/[-\s]/, '').split("") == input.downcase.gsub(/[-\s]/, '').split("").uniq
  end
end

input = "subdermatoglyphic"

#input = "six-year-old"
puts "#{Isogram.isogram?(input)}"