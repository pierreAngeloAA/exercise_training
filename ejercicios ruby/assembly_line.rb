class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    (@speed * 221) * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

	def success_rate
		case @speed
		when 1..4
			tasa =	1
		when 5..8
			tasa =	0.9
		when 9
					tasa = 0.8  
		when 10
			tasa =	0.77
		end
	end
end

puts AssemblyLine.new(6).working_items_per_minute
