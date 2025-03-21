class Gigasecond
  GIGASECOND = 1_000_000_000  
  
  def self.from(time)
    time + GIGASECOND  
  end
end

puts Gigasecond.from(Time.new) # => diferencia entre .new local del sistema y  Tiempo Universal Coordinado .utc

puts Gigasecond.from(Time.utc(2015, 1, 24, 22, 0, 0)) 