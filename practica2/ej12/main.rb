require_relative 'purchase.rb'
require_relative 'productsList.rb'

compra = Purchase.new
lista = ProductsList.new
desc = BiggerThan200.new
desc2 = TwoHistoriasDeChillar.new
compra.addDiscount(desc2)
compra.addDiscount(desc)

loop do
    puts "Que producto desea agregar a la compra? (x = finalizar)"
    elec = gets.chomp
    if elec == 'x'
        break
    end
    prod = lista.getProduct(elec)
    if prod != -1
        puts "\n"
        compra.add(prod)
        puts "-----Producto elegido--------"
        puts prod
        puts "-----------------------------"
        puts "Total de la compra :%0.2f" %compra.total
        puts "\n"
    else
        puts "Producto no existente"
    end
end
puts "Procesando descuentos"
compra.processDiscounts
puts "Total compra nuevo: %0.2f" %compra.total
