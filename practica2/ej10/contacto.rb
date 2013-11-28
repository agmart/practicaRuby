class Contacto
    attr_accessor :nombre, :fechaNac, :email, :tel, :dir
    
    def initialize(nombre, fechaNac, email, tel, dir)
        @nombre = nombre
        @fechaNac = fechaNac
        @email = email
        @tel = tel
        @dir = dir
    end

    def to_s
        puts "Nombre: %s\nFecha Nacimiento: %s\nEmail: %s\nTelefono: %s\nDireccion :%s" % [@nombre, @fechaNac, @email, @tel, @dir]
    end
        

end
