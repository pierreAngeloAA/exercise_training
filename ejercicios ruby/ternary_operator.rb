puts "ternary operator"

class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= 60 ? 10 : 15
  end

  def watch_scary_movie?
    @age >= 18 ? true : false
	end

  # Popcorn is 🍿
  def claim_free_popcorn!
    @member == true ? "🍿" : NotMovieClubMemberError 
  end
end

puts Moviegoer.new(26).ticket_price
puts Moviegoer.new(61).ticket_price
puts Moviegoer.new(2).watch_scary_movie?
puts Moviegoer.new(21, member: true).claim_free_popcorn!
puts Moviegoer.new(17, member: false).claim_free_popcorn!