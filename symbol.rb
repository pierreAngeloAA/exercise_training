
puts "simbolo".object_id  
puts "simbolo".object_id  

Symbol.all_symbols #para ver la tabla de simbolo 

h = {'perro' => 'canino', 'gato' => 'felino', 'burro' => 'asno', 12 => 'docena'}
puts h.length   # 4
puts h['perro'] # 'canino'
puts h
puts h[12]



module Port
	IDENTIFIER = :PALE

	def self.get_identifier(city)
		city[0,4].upcase.to_sym
	end

	def self.get_terminal(ship_identifier)
		ship = ship_identifier[0,3].upcase.to_sym
    if ship == :OIL
      puts :A
    else
      puts :B
		end
	end
end

puts Port::IDENTIFIER
Port.get_identifier("Barranquilla")
Port.get_terminal(:OIL123)git branch -M main
Port.get_terminal(:MOS123)  