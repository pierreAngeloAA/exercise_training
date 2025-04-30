# class Frame
#   attr_accessor :rolls
# end

# class Roll
# 	attr_accessor :pins
# end

# class Game
# attr_accessor :frames, :current_frame

# class BowlingError < StandardError; end

# def initialize
# 	@frames = []
# 	@current_frame = 0
# 	@rolls = []	
# 	@current_frame = []
# end

# 	def roll(pins)
# 		raise BowlingError, "Pins cannot be negative" if pins < 0

# 		raise BowlingError, "Pins cannot be greater than 10" if pins > 10

# 		if @current_frame.size == 1 && (@current_frame[0] + pins > 10) && @current_frame[0] != 10
# 		raise BowlingError, "Two rolls in a frame cannot score more than 10 points"
# 		end

# 		@current_frame << pins

# 		if @current_frame.size == 2 || @current_frame[0] == 10
# 		@rolls += @current_frame
# 		@current_frame = []
# 		end
# 	end

# 	def score
# 			total = 0
# 			frame_index = 0
# 			10.times do
# 			if strike?(frame_index)
# 					total += 10 + strike_bonus(frame_index)
# 					frame_index += 1
# 			elsif spare?(frame_index)
# 					total += 10 + spare_bonus(frame_index)
# 					frame_index += 2
# 			else
# 					total += sum_of_balls_in_frame(frame_index)
# 					frame_index += 2
# 			end
# 			end
# 			total
# 	end

# 	private

# 	def strike?(frame_index)
# 			@rolls[frame_index] == 10
# 	end

# 	def spare?(frame_index)
# 			@rolls[frame_index] + @rolls[frame_index + 1] == 10
# 	end

# 	def strike_bonus(frame_index)
# 			@rolls[frame_index + 1] + @rolls[frame_index + 2]
# 	end

# 	def spare_bonus(frame_index)
# 			@rolls[frame_index + 2]
# 	end

# 	def sum_of_balls_in_frame(frame_index)
# 			@rolls[frame_index] + @rolls[frame_index + 1]
# 	end
# end


# total_points += frame.first_roll + frame.second_roll

# case 
# when spare && !final_frame
# 	total_points += @frames[index + 1].first_roll
# 	puts "soy un spare  #{total_points}"
# when strike && !final_frame
# 	total_points += @frames[index + 1].frame_points
# 	puts "soy un strike  #{total_points}"
# when final_frame && spare
# 	total_points += @rolls[20]
# 	puts "soy un final con spare #{total_points}"
# when final_frame && strike
# 	total_points += @rolls[final_rolls - 2] + @rolls[final_rolls - 1]
# 	puts " soy un final con strike #{total_points}"
# else 
# 	total_points
# 	puts "soy puntos totales #{total_points}"
# end


# ✅ Open Frame: Suma los pinos derribados.
# ✅ Spare: 10 + el siguiente tiro.
# ✅ Strike: 10 + los dos siguientes tiros.
# ✅ Frame 10: Se otorgan tiros extra si se consigue spare o strike.


class Frame
	attr_accessor :first_roll, :second_roll, :frame_points, :id
	@@counter = 1

  def initialize(first_roll, second_roll)
		@id = @@counter
    @first_roll = first_roll
    @second_roll = second_roll
		@frame_points = points
		@@counter += 1
	end

	def strike?
		@first_roll == 10 && @second_roll == 0
	end

	def spare?
		@frame_points == 10 && !strike?
	end

	def final_strike?
		@id == 10 &&	strike?
	end

	def final_spare?
		@id == 10 && !strike?
	end

	def points
		@first_roll + @second_roll
	end

end

class Game
	attr_accessor :frames, :current_rolls, :contador, :rolls

	def initialize
		@frames = []
		@rolls = []
		@current_rolls = []
		@total = 0
	end

	def roll(pins)
		@rolls << pins
	end

	def score
		rolls_frames
		total_points = 0
		@frames.each_with_index do |frame, index|
			if frame.id <= 10
				case 
				when frame.final_strike? && @frames[index + 1] == !nil
					total_points += frame.frame_points + @frames[index + 1].frame_points
				when frame.final_spare? && @frames[index + 1] == !nil
					total_points += frame.frame_points + @frames[index + 1].first_roll
				when frame.strike?
					total_points += frame.frame_points + @frames[index + 1].frame_points
				when frame.spare?
					total_points += frame.frame_points + @frames[index + 1].first_roll
				else
					total_points += frame.frame_points
				end
			end
		end
		total_points
	end

	def rolls_frames
		@rolls.each_slice(2).to_a.each do |i|
				@frames << Frame.new(i[0], i[1])
		end
	end
end

game = Game.new
rolls = [3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6, 3, 6]
rolls.each { |pins| game.roll(pins) }

# game.frames.each do |i|
# 	puts "#{i.first_roll} - #{i.second_roll} - #{i.frame_points}   id:#{i.id}"
# 	puts 	"es strike? #{i.strike?} -> es spare #{i.spare?}"
# 	puts "es final strike? #{i.final_strike?}  -> es final spare #{i.final_spare?}"
# end

puts game.score