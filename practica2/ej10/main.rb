require_relative "csv.rb"
require_relative "contacto.rb"

csv = CsvReader.new


puts "A = Agregar\nE = Editar (no anda por ahora)\nS = Buscar (por nombre)\nSA = Mostrar todos\nX = Salir"

loop do
    puts "Elija una opción (h para mostrar opciones)"
    selec = gets.chomp
    
    case selec
    when 'x'
        break
    when 'a'
        puts "Ingrese el nombre"
        getName = gets.chomp
        puts "Ingrese la fecha de nacimiento (dd/mm/yy)"
        getDate = gets.chomp
        puts "Ingrese el email"
        getMail = gets.chomp
        puts "Ingrese el telefono"
        getTel = gets.chomp
        puts "Ingrese la direccion"
        getDir = gets.chomp
        c = Contacto.new(getName, getDate, getMail, getTel, getDir)
        csv.write_to_csv c
        puts "Contacto agregado"
    when 'e'
        puts "Ingrese el nombre del contacto a editar"
        getName = gets.chomp
        puts "\n"
        if csv.edit_contact(getName) == -1
            puts "Contacto no encontrado"
        else
            puts "Contacto editado correctamente"
        end
    when 's'
        puts "Ingrese el nombre del contacto a buscar"
        getName = gets.chomp
        if csv.search_contact(getName) == -1
            puts "Contacto no encontrado"
        end
    when 'sa'
        puts "Imprimiendo contactos"
        csv.print_all_contacts
    when 'h'
        puts "A = Agregar\nE = Editar\nS = Buscar (por nombre)\nSA = Mostrar todos\nX = Salir"
    else
        puts "Opcion incorrecta"
    end
end

puts "Saliendo..."

