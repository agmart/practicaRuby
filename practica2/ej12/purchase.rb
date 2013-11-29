class Purchase
    attr_accessor :totalDisc
    def initialize()
        @purchase = []
        @total = 0.00
        @discounts = []
    end

    def add(producto)
        prodNomb = producto[1]
        prodId = producto[0]
        prodPrecio = Float (producto[2])
        @purchase << [prodId, prodNomb, prodPrecio]
    end

    def total()
        @total = 0
        @purchase.each { | v | @total += Float (v[2]) }
        @total
    end

    def to_s
        puts @purchase
    end

    def processDiscounts()
        @discounts.each { | v | v.process(@purchase) }
    end

    def addDiscount(discount)
        @discounts << discount
    end
end

class Discount
    # Clase abstracta
end

class BiggerThan200 < Discount
    def process(purchase)
        tot = 0
        purchase.each { | v | tot += Float(v[2]) }
        if tot > 200
            purchase.each { | v |
                v[2] = v[2] * 0.9
            }
        end
    end
end

class TwoHistoriasDeChillar < Discount
    def process(purchase)
        cant = 0
        purchase.each { | v | 
            cant += 1 if v[1] == "Historias de chillar"
        }
        
        if cant >= 2
            p purchase
            purchase.each { | v |
                if  v[1] == "Historias de chillar"
                    v[2] = 65.00
                end
            }
            p purchase
        end  
    end
end

