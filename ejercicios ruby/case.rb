puts "🍿" * 50

module Blackjack

	CARDS = {
					"ace" => 11,
					"two" => 2,
					"three" => 3,
					"four" => 4,
					"five" => 5,
					"six" => 6,
					"seven" => 7,
					"eight" => 8,
					"nine" => 9,
					"ten" => 10,
					"jack" => 10,
					"queen" => 10,
					"king" => 10,
					"other" => 0 
					}

	RANGEOFVALUES = {
						"low"	=> (4..11),
						"mid" =>	(12..16),
						"high" =>	(17..20),
						"blackjack" =>	21
						}

	def self.parse_card(card)
		CARDS[card] ? CARDS[card] : 0
	end

	def self.card_range(card1, card2)
		puts CARDS[card1]
		puts CARDS[card2]
		value = CARDS[card1] + CARDS[card2]
		case
		when RANGEOFVALUES["low"].include?(value) 
			"low"
		when RANGEOFVALUES["mid"].include?(value) 
			"mid"
		when RANGEOFVALUES["high"].include?(value) 
			"high"
		when RANGEOFVALUES["blackjack"] == 21
			"blackjack"
		end
	end

	def self.first_turn(card1, card2, dealer_card)
		value = CARDS[card1] + CARDS[card2]
		case
    when card1 == "ace" && card2 == "ace"
      "P" # Split
    when value == 21 && !["ten", "jack", "queen", "king", "ace"].include?(dealer_card)
      "W" # Win
    when value == 21
      "S" # Stand if the dealer has a 10, figure, or ace
    when (17..20).include?(value)
      "S" # Stand
    when (12..16).include?(value)
      CARDS[dealer_card] >= 7 ? "H" : "S" # Hit if dealer has 7 or more, else Stand
    when value <= 11
      "H" # Hit
    else
      "H" # Default to Hit
    end
	end
end
  
Blackjack.parse_card("ace")
puts Blackjack.card_range("ten", "king")
puts Blackjack.card_range("ace", "ten")
puts Blackjack.first_turn("ace", "ten", "ten")