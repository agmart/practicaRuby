puts "Convertir:\n
1 - Feets a metros
2 - Metros a feets\n\n"

o = Integer (gets.chomp)

case o 
when 1
    puts "Cantidad a convertir"
    size = Float(gets.chomp)

    metros = Float (size/3.2808)
    puts "%f pies son %f metros" %[size, metros]
when 2
    puts "Cantidad a convertir"
    size = Float (gets.chomp)
    
    feets = Float (size*3.2808)
    puts "%f metros son %f pies" %[size, feets]
else
    puts "Opcion incorrecta"
end
