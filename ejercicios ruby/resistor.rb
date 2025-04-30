module ResistorColorDuo
  COLOR_VALUES = {
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9
  }

  def self.value(array)
    ("#{COLOR_VALUES[array[0]]}#{COLOR_VALUES[array[1]]}").to_i
  end
end

puts ResistorColorDuo.value(%w[blue grey])