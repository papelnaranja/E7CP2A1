# Dado el arreglo

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
# Se pide:

# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
# 2. Utilizando .map crear una arreglo con los nombres en minúscula.
# 3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
# Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
# Utilizando .map y .gsub eliminar las vocales de todos los nombres.


# 1. item
puts nombres.select { |x| x.length > 5 }
# La x equivaldría al nombre, de cada uno de los elementos
# El puts interno genera la extención de cada uno de los elementos

# 2.item
mini = nombres.map { |x| x.downcase }
#print mini

# 3.item
puts nombres.select {|x| x.include? "P"}

# 4.item
cant_letras = nombres.map { |x| x.length }
print cant_letras

# 5.item
sin_vocal = nombres.map {|x| x.gsub(/[AEIOUaeiou]/, '')}
print sin_vocal