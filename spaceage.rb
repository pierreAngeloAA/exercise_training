class SpaceAge

	MINUTE = 60
	HOUR = 60
	DAY = 24
	YEAR_EARTH = 365.25

	attr_accessor :age_in_seconds

	def initialize(age_in_seconds)
		@age_in_seconds = age_in_seconds
	end
	
	def on_earth
		((((@age_in_seconds/MINUTE)/HOUR)/DAY)/YEAR_EARTH).round(2)
	end

	def on_mercury
    (on_earth / 0.2408467).round(2)
	end

	def on_venus
		(on_earth / 0.61519726).round(2)
	end

	def on_mars
		(on_earth / 1.8808158).round(2)
	end

	def on_jupiter
		(on_earth / 11.862615).round(2)
	end

	def on_saturn
		(on_earth / 29.447498).round(2)
	end
	
	def on_uranus
		(on_earth / 84.016846).round(2)
	end

	def on_neptune
		(on_earth / 164.79132).round(2)
	end
end

puts SpaceAge.new(1000000000).on_earth

puts SpaceAge.new(2329871239).on_mars

puts SpaceAge.new(8210123456).on_neptune

puts SpaceAge.new(2134835688).on_mercury

puts SpaceAge.new(189839836).on_venus