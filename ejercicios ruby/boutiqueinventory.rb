puts "🍿" * 50

fibonacci = [0, 1, 1, 2, 3, 5, 8, 13]

fibonacci.count  { |number| number == 1 }   #=> 2
puts fibonacci.any?   { |number| number > 20 }   #=> false
puts fibonacci.any?   { |number| number > 4 }   #=> true
fibonacci.none?  { |number| number > 20 }   #=> true
fibonacci.select { |number| number.odd? }   #=> [1, 1, 3, 5, 13]
puts fibonacci.all?   { |number| number < 20 }   #=> true
puts fibonacci.all?   { |number| number < 4 }   #=> false
fibonacci.map    { |number| number * 2  }   #=> [0, 2, 2, 4, 6, 10, 16, 26]
fibonacci.select { |number| number >= 5}    #=> [5, 8, 13]
fibonacci.find   { |number| number >= 5}    #=> 5

# Some methods work with or without a block
fibonacci.sum  #=> 33
fibonacci.sum {| number | number * number }  #=> 273

# There are also methods to help with nested arrays:
animals = [ ['cat', 'bob'], ['horse', 'caris'], ['mouse', 'arya'] ]

animals.flatten  #=> ["cat", "bob", "horse", "caris", "mouse", "arya"]

pets = [
  { animal: "cats", names: ["bob", "fred", "sandra"] },
  { animal: "horses", names: ["caris", "black beard", "speedy"] },
  { animal: "mice", names: ["arya", "jerry"] }
]

pets.map { |pet|
  pet[:names].select { |name| name.length <= 5 }
}.flatten.sort
#=> ["arya", "bob", "caris", "fred", "jerry"]

pet_names = {cat: "bob", horse: "caris", mouse: "arya"}
pet_names.each { |animal, name| puts "#{animal} =>  #{name}" }

pets = [
  { animal: "cats", names: ["bob", "fred", "sandra"] },
  { animal: "horses", names: ["caris", "black beard", "speedy"] },
  { animal: "mice", names: ["arya", "jerry"] }
]

# You can also enumerate in nested blocks, and daisy chain methods together. 
# For example, if we have an array of hashes of animals, 
# and we want to extract the animals with short names, we might want to 
# do something like:
puts "🍿" * 50


class BoutiqueInven￼×tory
    def initialize(items)
      @items = items
    end
  
    def item_names
      items.map { |item| item[:name] }
    end
  
    def cheap
      items.select {|item| item[:price] < 30.0}
    end
  
    def out_of_stock
			items.select {|item| item[:quantity_by_size].length <= 0}
    end
		
    def stock_for_item(find_name)
      (items.find {|item| item[:name] == find_name})[:quantity_by_size]
    end
  
    def total_stock
			@items.sum { |item| item[:quantity_by_size].values.sum }
    end
  
    private
    attr_reader :items
  end

	BoutiqueInventory.new([
  {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
  {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
  {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
]).stock_for_item("Bamboo Socks Cats")