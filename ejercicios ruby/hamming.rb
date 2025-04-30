# *	Permite repetir la cadena n veces
# "a" * 5 # aaaaa

# <<	Permite concatenar la cadena con otra cadena
# "a" << "b" # ab

# capitalize	Capitaliza una cadena
# "hola mundo".capitalize # Hola mundo

# upcase	Cambia a mayúsculas
# "Hola".upcase # HOLA

# downcase	Cambia a minúsculas
# "HoLa".downcase # hola

# empty?	Returna true si la cadena está vacía
# "".empty? # true

# gsub	Reemplaza las ocurrencias en el texto
# "Hola mundo".gsub("mundo", "Germán") # Hola Germán

# # Para recorrer cada uno de los caracteres de una cadena puedes hacer lo siguiente:
# str = "Hola mundo"

# chars = str.chars # ["H", "o", "l", "a", " ", "m", "u", "n", "d", "o"]
# chars.each do |c|
#   puts c
# end

module Hamming 

	def self.compute(string_1,string_2)
		if string_1.size == string_2.size
			size = string_1.size
			compare(string_1.chars, string_2.chars)
		elsif string_1.empty? || string_2.empty? 
			raise ArgumentError.new 
		else
			raise ArgumentError.new 
		end
	end

	def self.compare(string_1,string_2)
		counter = 0
		string_1.each_with_index	do |i, index| 
			if string_1[index] != string_2[index]
				counter += 1
			end
		end
		counter
	end
end

string_1 = "GGACGGATTCTG"
string_2 = "AGGACGGATTCT"

puts Hamming.compute(string_1, string_2)





