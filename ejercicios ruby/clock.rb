class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    @minute = minute % 60 
    @hours_by_minutes = (minute / 60).to_i
    @hour = (hour + @hours_by_minutes) % 24
  end

  def +(other)
    Clock.new(hour: @hour, minute: @minute + other.minute + (other.hour * 60))
  end

  def to_s
    format('%02d:%02d', @hour, @minute)
  end
end

# format('%02d:%02d', @hour, @minute) # Asegura formato HH:MM
puts Clock.new(minute: 160).to_s