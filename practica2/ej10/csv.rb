require 'csv'

class CsvReader
    def initialize
        @contactos = []
    end

    def read_csv(filename)
        CSV.foreach(filename, headers: true) do | row |
            @contactos << Contacto.new(row["Nombre"], row["fechaNacimiento"], row["email"], row["telefono"], row["direccion"])
        end
    end

    def write_to_csv(contacto)
        # Agrega al final del CSV el contacto pasado por parametro
        CSV.open("contactos.csv", "ab") do | csv |
            csv << [contacto.nombre, contacto.fechaNac, contacto.email, contacto.tel, contacto.dir]
        end
    end

    def print_all_contacts
        read_csv("contactos.csv")
        @contactos.each { | c | puts c.to_s }
    end

    def search_contact(getName)
        # Busca e imprime el contacto. Devuelve el indice en el que se encuentra
        read_csv("contactos.csv")
        indice = 0
        @contactos.each { | c | 
            if c.nombre == getName
                puts c.to_s
                return indice
            end 
            indice += 1            
        }
        return -1
    end

    def edit_contact(getName)
        ind = search_contact(getName)
        # ind == indice de ese contacto en el arreglo de contactos
        puts "Editar este contacto? (y/n)"
        yon = gets.chomp
        puts "\n"
        if yon == 'y' or yon == 'Y'
            puts "Nuevo nombre:"
            nuevNomb = gets.chomp
            puts "Nueva fecha de nacimiento:"
            nuevaFech = gets.chomp
            puts "Nuevo email:"
            nuevoEmail = gets.chomp
            puts "Nuevo telefono:"
            nuevoTel = gets.chomp
            puts "Nueva direccion:"
            nuevaDir = gets.chomp
            nuevCont = Contacto.new(nuevNomb, nuevaFech, nuevoEmail, nuevoTel, nuevaDir)
            @contactos[ind] = nuevCont
            # volcar @contactos al CSV?
            puts "Nuevos valores:"
            puts @contactos[ind].to_s 
            puts "\n"
            puts @contactos
            CSV.open("contactos.csv", "w") do | csv |
                csv << ["Nombre", "fechaNacimiento", "email", "telefono", "direccion"]
                @contactos.each { | contacto | 
                    csv << [contacto.nombre, contacto.fechaNac, contacto.email, contacto.tel, contacto.dir]
                }
            end
        else
            puts "No se edita el contacto."
        end
    end
end
