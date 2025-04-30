module EliudsEggs

  def self.egg_count(n)
    nest_boxes = []

    while n != 0
      result = n % 2 
      nest_boxes << result
      n = (n / 2).to_i
    end
    nest_boxes.sum
  end
end

puts EliudsEggs.egg_count(16)