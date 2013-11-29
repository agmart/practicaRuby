class Metros
    attr_accessor :cant
        
    def initialize(cant)
        @cant = cant
    end
    
    def a_pies
        Float (@cant * 3.2808)
    end
end

class Pies
    attr_accessor :cant
    
    def initialize(cant)
        @cant = cant
    end

    def a_metros
        Float (@cant / 3.2808)
    end
end

puts "Convertir:\n
1 - Feets a metros
2 - Metros a feets\n\n"

o = Integer (gets.chomp)

case o 
when 1
    puts "Cantidad a convertir"
    size = Float(gets.chomp)
    p = Pies.new(size)
    puts p.a_metros
when 2
    puts "Cantidad a convertir"
    size = Float (gets.chomp)
    m = Metros.new(size)
    puts m.a_pies
else
    puts "Opcion incorrecta"
end
