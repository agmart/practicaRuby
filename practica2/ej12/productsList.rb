require 'csv'

class ProductsList
    attr_accessor :products

    def initialize()
        @products = []
        CSV.foreach("data") do | row |
            @products << row
        end
    end

    def to_s()
        puts @products
    end

    def getProduct(id)
        @products.each { | p | 
            if p[0] == id 
                return p
            end
        }
        return -1
    end
end
