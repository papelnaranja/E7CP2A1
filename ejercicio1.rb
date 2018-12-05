
# Dado el array:

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
# 1. Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
# 2. Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.
# 3. Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.
# 4. Utilizando reject descartar todos los elementos menores a 5 en el array.
# 5. Utilizando select descartar todos los elementos mayores a 5 en el array.
# 6. Utilizando inject obtener la suma de todos los elementos del array.
# 7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
# 8.  Utilizando group_by agrupar todos los números mayores y menores que 6.


# 1 Ejercicio 
# Porque funciona con .map y no con each ??
# El each devulve un array
# El map copia y transforma
# map y collelect son sinonimos
mas_uno = a.map { |e| e+1 }
# map recive una función y se las funciones anonimas son bloques
#print mas_uno

# 2 Ejercicio 
to_float = a.map { |e| e.to_f }
#print to_float

# 3 Ejercicio 
to_string = a.map { |e| e.to_s }
#print to_string

# 4 Ejercicio 
mayores_5 = a.reject { |e| e < 5 }
# rechaza todo los números menores que 5 y muestra los mayores
print mayores_5

# 5 Ejercicio 
menores_5 = a.select { |e| e < 5 }
# selecciona los elementos menores de 5
print menores_5

# 6 Ejercicio 
sumatoria = a.inject { |sum , x| sum + x }
# selecciona los elementos menores de 5
puts sumatoria


# 7 Ejercicio 
par_impar = a.group_by { |elem| elem.odd?}
# selecciona los elementos menores de 5
puts par_impar
