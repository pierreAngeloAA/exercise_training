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


class Frame
	attr_accessor :first_roll, :second_roll, :frame_points

  def initialize(first_roll, second_roll)
    @first_roll = first_roll
    @second_roll = second_roll
		@frame_points = first_roll + second_roll
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
		@current_rolls << pins

		if pins == 10 && @current_rolls.size == 1
			frame = Frame.new(@current_rolls[0], 0)
			@frames << Frame.new(@current_rolls[0], 0)
			puts "soy un frame de #{frame.first_roll} y #{frame.second_roll}"

			@current_rolls.clear 
		elsif @current_rolls.size == 2
			frame = Frame.new(@current_rolls[0], @current_rolls[1])
			@frames << Frame.new(@current_rolls[0], @current_rolls[1])
			puts "soy un frame normal con mis dos valores #{frame.first_roll} y #{frame.second_roll}"
			@current_rolls.clear
		end
	end

	def score
		total_points = 0
		final_frame = @frames.size - 1 == index
		final_rolls = @rolls.size - 1
		@frames.each_with_index do |frame, index|
			spare = frame.frame_points == 10
			strike = frame.first_roll == 10
			
			total_points += frame.first_roll + frame.second_roll

			case 
			when spare && !final_frame
				total_points += @frames[index + 1].first_roll
				puts "soy un spare  #{total_points}"
			when strike && !final_frame
				total_points += @frames[index + 1].frame_points
				puts "soy un strike  #{total_points}"
			when final_frame && spare
				total_points += @rolls[20]
				puts "soy un final con spare #{total_points}"
			when final_frame && strike
				total_points += @rolls[final_rolls - 2] + @rolls[final_rolls - 1]
				puts " soy un final con strike #{total_points}"
			else 
				total_points
				puts "soy puntos totales #{total_points}"
			end
		end
		total_points
	end
end


# ✅ Open Frame: Suma los pinos derribados.
# ✅ Spare: 10 + el siguiente tiro.
# ✅ Strike: 10 + los dos siguientes tiros.
# ✅ Frame 10: Se otorgan tiros extra si se consigue spare o strike.

game = Game.new

rolls = [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 7]
rolls.each { |pins| game.roll(pins) }

puts "#{game.score}"