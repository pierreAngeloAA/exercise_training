puts "LocomotiveEngineer"

puts "Decomposition" 
fruits = ["apple", "banana", "cherry"]
x, y, z = fruits
puts  x

fruits = ["apple", "banana", "cherry"]
_, _, z = fruits
puts z

puts "Deep decomposing"
fruits_vegetables = [["apple", "banana"], ["carrot", "potato"]]
(a, b), (c, d) = fruits_vegetables
puts a
puts d

puts "You can also deeply unpack just a portion of a nested array:"
fruits_vegetables = [["apple", "banana"], ["carrot", "potato"]]
a, (c, d) = fruits_vegetables
puts a
puts c

puts "Decomposing an array with the single splat operator (*)"
fruits = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
x, *last = fruits
puts x
puts "#{last}"

puts "We can also extract the values at the beginning and end of the array while grouping all the values in the middle:"
fruits = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
x, *middle, y, z = fruits
puts y
puts "#{middle}"

puts "We can also use * in deep decomposition:"
fruits_vegetables = [["apple", "banana", "melon"], ["carrot", "potato", "tomato"]]
(a, *rest), b = fruits_vegetables
puts a
puts "#{rest}"

puts "Decomposing a Hash"
fruits_inventory = {apple: 6, banana: 2, cherry: 3}
x, y, z = fruits_inventory
puts "#{x}"
puts  y

puts "To coerce a Hash to an array you can use the to_a method:"
x, y, z = fruits_inventory.to_a
puts "#{x}"


puts "If you want to unpack the keys then you can use the keys method:"
fruits_inventory = {apple: 6, banana: 2, cherry: 3}
x, y, z = fruits_inventory.keys
puts x

puts "If you want to unpack the values then you can use the values method:"
fruits_inventory = {apple: 6, banana: 2, cherry: 3}
x, y, z = fruits_inventory.values
puts x

puts "Composition"
fruits = ["apple", "banana", "cherry"]
more_fruits = ["orange", "kiwi", "melon", "mango"]
# fruits and more_fruits are unpacked and then their elements are packed into combined_fruits
combined_fruits = *fruits, *more_fruits
puts "#{combined_fruits}"

puts "Composition a hash with double splat operator(**)"
fruits_inventory = {apple: 6, banana: 2, cherry: 3}
more_fruits_inventory = {orange: 4, kiwi: 1, melon: 2, mango: 3}
# fruits_inventory and more_fruits_inventory are unpacked into key-values pairs and combined.
combined_fruits_inventory = {**fruits_inventory, **more_fruits_inventory}
# then the pairs are packed into combined_fruits_inventory
puts "#{combined_fruits_inventory}"

puts "Usage of splat operator(*) and double splat operator(**) with methods"
def my_method(*arguments)
  arguments
end
# Arguments given to the method are packed into an array
puts "#{my_method(1, 2, 3)}"
puts my_method("Hello")
puts "#{my_method(1, 2, 3, "Hello", "Mars")}"

def my_method(**keyword_arguments)
	keyword_arguments
end
# Arguments given to the method are packed into a dictionary
puts "#{my_method(a: 1, b: 2, c: 3)}"

def my_method(*arguments, **keyword_arguments)
  puts arguments.sum
  for (key, value) in keyword_arguments.to_a
    puts key.to_s + " = " + value.to_s
  end
end
my_method(1, 2, 3, a: 1, b: 2, c: 3)

puts "You can also write arguments before and after *arguments to allow for specific positional arguments. This works the same way as decomposing an array."
def my_method(a, b, *arguments)
  p a
  p b
  p arguments
end
my_method(1, 2, 3, 4, 5)

puts "You can also combine positional arguments, *arguments, key-word arguments and **keyword_arguments:"
def my_method(first, *many, last, a:, **keyword_arguments)
	p first
	p many
	p last
	p a
	p keyword_arguments
end
my_method(1, 2, 3, 4, 5, a: 6, b: 7, c: 8)

puts "You can use splat operator (*) to unpack an array of arguments into a method call:"
def my_method(a, b, c)
  p c
  p b
  p a
end
numbers = [1, 2, 3]
my_method(*numbers)

puts "You can also use double splat operator(**) to unpack a hash of arguments into a method call:"
def my_method(a:, b:, c:)
  p c
  p b
  p a
end
numbers = {a: 1, b: 2, c: 3}
my_method(**numbers)

puts "=" *100

class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)
    arguments
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    a, b, c, *last = each_wagons_id
    [c, *missing_wagons, *last, a, b]
  end

  def self.add_missing_stops(route, **missing_stops)
    route[:stops] = missing_stops.values
    route
  end

  def self.extend_route_information(route, more_route_information)
    route.merge(more_route_information)
  end
end

#puts "#{LocomotiveEngineer.generate_list_of_wagons(1, 7, 12, 3, 14, 8, 5)}"


# LocomotiveEngineer.fix_list_of_wagons([2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15])

# => [1, 3, 17, 6, 15, 7, 4, 12, 6, 3, 13, 2, 5]

# LocomotiveEngineer.add_missing_stops({from: "New York", to: "Miami"},
#                     stop_1: "Washington, DC", stop_2: "Charlotte", stop_3: "Atlanta",
#                     stop_4: "Jacksonville", stop_5: "Orlando")

# => {from: "New York", to: "Miami", stops: ["Washington, DC", "Charlotte", "Atlanta", "Jacksonville", "Orlando"]}



LocomotiveEngineer.extend_route_information({"from": "Berlin", "to": "Hamburg"}, {"length": "100", "speed": "50"})
# => {"from": "Berlin", "to": "Hamburg", "length": "100", "speed": "50"}
