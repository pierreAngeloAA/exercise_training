class TwoBucket
  attr_accessor :bucket_1, :bucket_2, :liters_desired, :goal_bucket

  def initialize(bucket_1, bucket_2, liters_desired, goal_bucket)
    @bucket_1 = bucket_1
    @bucket_2 = bucket_2
    @liters_desired = liters_desired
    @goal_bucket = goal_bucket
    @movies = 0
  end


  def moves
    queue = [0,0,1]

    while indentify_position[0] != @liters_desired
      case 
      when indentify_position[0] 
        
      when 
        
      else
        
      end

    end
    
  end
end

#subject = TwoBucket.new(3, 5, 1, "two")
puts subject = TwoBucket.new(3, 5, 1, "two").moves