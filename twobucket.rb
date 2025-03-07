class TwoBucket
  attr_accessor :bucket_1, :bucket_2, :liters_desired, :goal_bucket

  def initialize(bucket_1, bucket_2, liters_desired, goal_bucket)
    @bucket_1 = bucket_1
    @bucket_2 = bucket_2
    @liters_desired = liters_desired
    @goal_bucket = goal_bucket
    @bucket = [bucket_1, bucket_2]
    @movies = 0
  end


  def moves
    cubes = []
    counter = 1
    if goal_bucket == "two"
      cubes = @bucket.reverse
    else
      cubes = @bucket
    end
    while cubes[0] != @liters_desired
      if cubes[0] != 0
        

      
    end
  end
end

#subject = TwoBucket.new(3, 5, 1, "two")
subject = TwoBucket.new(3, 5, 1, "one")
puts subject.moves