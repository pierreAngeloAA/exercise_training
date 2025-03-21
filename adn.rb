module Complement
  ADN = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  def self.of_dna(adn)
    adn.chars.map{|i| ADN[i]}.join
  end
end


puts Complement.of_dna('ACGTGGTCTTAA')    # ->  UGCACCAGAAUU



