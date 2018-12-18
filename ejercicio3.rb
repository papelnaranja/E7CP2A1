# Crear un menú que permita registrar la información de los alumnos del curso.

# Opción 1: Permite ingresar los datos de una persona:

# Nombre
# Edad
# Comuna
# Género
# Opción 2: Permite editar los datos de la persona.

# Opción 3: Permite eliminar una persona.

# Opción 4: Muestra la cantidad de personas ingresadas.

# Opción 5: Muestra las comunas de todas las personas.

# hint: Generar un array con las comunas, eliminar repeticiones. Considerar que pueden haber nombres escritos con mayúscula y minúscula.

# Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.

# Opción 7: Muestra la suma de las edades de todas las personas.

# Opción 8: Muestra el promedio de las edades del grupo.
# Opción 9: Muestra dos listas de personas, una por cada género.
# El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).







epic_array = [{
    Nombre: 'Pepito',
    Edad: 20,
    Comuna: 'Independencia',
    Genero: 'Masculino'
    },{
    Nombre: 'L',
    Edad: 30,
    Comuna: 'santiago',
    Genero: 'Masculino'      
    },{
    Nombre: 'Maria',
    Edad: 18,
    Comuna: 'Macul',
    Genero: 'Femenino'        
    },{
    Nombre: 'Vane',
    Edad: 20,
    Comuna: 'Providencia',
    Genero: 'Femenino' 
    }
]

def program_init()
    puts "Programa de registro de Estudiantes"
    puts "Ingrese un número del 1 al 10, para seleccionar su opcion"
    puts "Opciones:"
    puts "1. Ingresar los datos de una persona."
    puts "2. Editar los datos de la persona."
    puts "3. Eliminar una persona."
    puts "4. Muestra la cantidad de personas ingresadas."
    puts "5. Muestra las comunas de todas las personas."
    puts "6. Muestra una lista con todas las personas que tengan entre 20 y 25 años."
    puts "7. Muestra la suma de las edades de todas las personas."
    puts "8. Muestra el promedio de las edades del grupo."
    puts "9. Muestra dos listas de personas, una por cada género."
    puts "10. Salir"
end


def add_student(epic_array)
    puts "Ingresga los siguientes las datos según corresponda"
    puts "nombre"
    nombre = gets.chomp
    puts "edad"
    edad = gets.chomp.to_i
    puts "comuna"
    comuna = gets.chomp
    puts "genero"
    genero = gets.chomp
    array_info = []
    array_info << nombre
    array_info << edad
    array_info << comuna
    array_info << genero
    array_info
    print array_info
    epic_array << do_hash(array_info)
    print epic_array
end


def do_hash(array)
    student_hash = {}
    student_hash[:Nombre] = array[0]
    student_hash[:Edad] = array[1]
    student_hash[:Comuna] = array[2]
    student_hash[:Genero] = array[3]
    return student_hash
end

def delete_studen(epic_array, nombre_eliminar)
    print epic_array
    index_of_delete = nil
    epic_array.each do |elem|
       value = elem.has_value?(nombre_eliminar)
       if value 
            index_of_delete = epic_array.index(elem)
       end
end
    epic_array.delete_at(index_of_delete) 
    print epic_array
end

def edit_student(epic_array, nombre)
    delete_studen(epic_array, nombre)
    add_student(epic_array)
end

def print_comunas(epic_array)
    epic_array.each do |elem| 
        puts elem[:Comuna]
    end
end

def entre_20_25(epic_array)
    edades_index = []
    epic_array.each_with_index do |val, index| 
        if val[:Edad] >= 20 && val[:Edad] <= 25 
            edades_index << index
        end
    end  
    edades_index.each do |elem|
        puts epic_array[elem][:Nombre]
    end
end

def suma_all(epic_array)
    suma = 0
    epic_array.each do |elem|
        suma += elem[:Edad]
    end
    return suma
end

def avarage(epic_array)
    numerador = suma_all(epic_array)
    divisor = epic_array.length
    promedio = numerador/divisor
end

def agrupar(epic_array)
    epic_array.group_by{|i| i[:Genero]}

end

option = 0
while option != 10 do
    program_init()
    puts "Lista actual"
    print epic_array
    option = gets.chomp.to_i
    case option
        when 1
            add_student(epic_array)
        when 2
            puts "ingresar nombre a editar"
            nombre = gets.chomp
            edit_student(epic_array, nombre)
        when 3
            puts "ingresar nombre a eliminar"
            nombre_eliminar = gets.chomp
            delete_studen(epic_array, nombre_eliminar)
        when 4
            puts epic_array.length
        when 5
            print_comunas(epic_array)
        when 6
            entre_20_25(epic_array)
        when 7
            puts suma_all(epic_array)
        when 8
            puts avarage(epic_array)
        when 9
            print agrupar(epic_array)
        when 10
            puts "salir"
    end
end

