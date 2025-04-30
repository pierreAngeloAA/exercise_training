puts "Los Bloques"

def hola &bloque 
    bloque.call if block_given?
end


def otro_hola &block
    puts "mandando a llamar otro bloque"
    block.all
end

hola {puts "soy un bloque"}

 