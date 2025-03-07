module Acronym
  def self.abbreviate(name)
    name.split(/\W+/).map { |palabra| palabra[0] }.join.upcase
  end
end


# puts Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')

puts "#{Acronym.abbreviate('Something - I made up from thin air')}"