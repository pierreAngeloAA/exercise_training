module Pangram

  def self.pangram?(sentence)
    ('a'..'z').all? { |letra| sentence.downcase.include?(letra) }
  end
end