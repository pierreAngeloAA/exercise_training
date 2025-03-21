module FlattenArray
  def self.flatten(value)
    value.flatten.compact
  end
end

# flatten es un método nativo de Ruby que se usa en los arrays para aplanarlos, es decir, convertir una estructura anidada en un array de una sola dimensión.
# tambien de le puede agregar los niveles de aplanamiento dependiendo el nivel de anidado

# y compact de utiliza para eliminar todos los valores nil de un array
puts FlattenArray.flatten([0, 2, [[2, 3], 8, 100, 4, [[[50]]]], -2]).inspect