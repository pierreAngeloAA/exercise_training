puts "🍿" * 50
fibonacci = [0, 1, 1, 2, 3, 5, 8, 13]

puts fibonacci.count  { |number| number == 1 }   #=> 2
puts fibonacci.any?   { |number| number == 6 }   #=> false
puts fibonacci.select { |number| number.odd? }   #=> [1, 1, 3, 5, 13]
puts fibonacci.all?   { |number| number < 20 }   #=> true
puts fibonacci.map    { |number| number * 2  }   #=> [0, 2, 2, 4, 6, 10, 16, 26]
array = ["Pedro", "Germán", "Diana"]
array.insert(0, "Juan") # ["Juan", "Pedro", "Germán", "Diana"]

puts "🍿" * 50

class BirdCount
	def self.last_week
    [2, 5, 0, 7, 4, 1]
  end

	def initialize(birds_per_day)
		@birds_per_day = birds_per_day
  end

	def yesterday
		@birds_per_day[-2]
	end

	def total
		days = 0
		@birds_per_day.each do |day| 
			days += day
		end
		days
	end

	def busy_days
		@birds_per_day.count { |day| day >= 5 } 

	end

	def day_without_birds?
		@birds_per_day.any? {|day| day == 0}
	end
end

  puts BirdCount.last_week
	birds_per_day = [2, 5, 0, 7, 4, 1]
	bird_count = BirdCount.new(birds_per_day)
	puts bird_count.yesterday
	puts bird_count.total
	puts bird_count.busy_days
	puts bird_count.day_without_birds?