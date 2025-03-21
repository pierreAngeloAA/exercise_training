module Raindrops
  def self.convert(item)
    case 
    when item % 3 == 0 && item % 5 == 0 && item % 7 == 0
      "PlingPlangPlong"
    when item % 3 == 0 && item % 5 == 0
      "PlingPlang"
    when item % 3 == 0 && item % 7 == 0
      "PlingPlong"
    when item % 5 == 0 && item % 7 == 0
      "PlangPlong"
    when item % 3 == 0
      "Pling"
    when item % 5 == 0
      "Plang"
    when  item % 7 == 0
      "Plong"
    else
      item.to_s
    end
  end
end
puts Raindrops.convert(105)