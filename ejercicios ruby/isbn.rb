class IsbnVerifier
  def self.valid?(number)
    return false if number.empty?
    if !!(number =~ /\A[\d-]*X?\z/)
      account = 0
      number = number.gsub("-", "").chars.map { |i| i == "X" ? 10 : i.to_i }
      return false if number.length != 10
      number.each_with_index do |i, index|
        puts account += i * (number.length - index)
      end
      account % 11 == 0
    else
      false
    end
  end
end


puts IsbnVerifier.valid?("3-598-21508-80")
