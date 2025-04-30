(1..4).count {|element| element < 3 } # => 2
r = ('a'..'d')
r.cover?('e')                     # => false
r = (1...4)
r.cover?(1..3)                    # => true
puts r.cover?(1..4)               # => false
('a'..'d').cover?('cc')           # => true
('a'..'d').include?('cc')         # => false
r = (1..5)
puts r.eql?(1..5)                 # => true
r = Range.new(1, 5)
r.eql?('foo')                      # => false
Range.new(2, 5).exclude_end?       # => false
Range.new(2, 5, true).exclude_end? # => true
puts (2..5).exclude_end?           # => false
puts (2...5).exclude_end?          # => true
puts "🍿" * 50

module Chess
  RANKS = (1..8)
  FILES = ("A".."H")

  def self.valid_square?(rank, file)
    RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    # ("#{first_name[0,2]}#{last_name[-2]}#{last_name[-1]}").upcase
  end

  def self.move_message(first_name, last_name, square)
    ranks = square[1].to_i
    file = square[0]
    nickname = nick_name(first_name,last_name)
    if  RANKS.include?(ranks) && FILES.include?(file)
      "#{nickname} moved to #{square}"
    else
      "#{nickname} attempted to move to #{square}"
    end
  end
end

puts Chess::RANKS
puts Chess::FILES

puts Chess.valid_square?(1, 'A')
Chess.nick_name("John", "Doe")
Chess.nick_name("pierre", "algarin")
puts "🍿" * 50
Chess.move_message("John", "Doe", "A1")
Chess.move_message("Dj", "Walker", "I9")