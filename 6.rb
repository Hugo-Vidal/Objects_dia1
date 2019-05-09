class Product
    attr_accessor :name, :large, :medium, :small, :xsmall
    def initialize(name, *prices)
        @name = name
        @prices = prices.map{|e| e.to_f}
    end

    def average
        suma = 0
        @prices.each do |e|
            suma += e
        end
        suma/@prices.size
    end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') {|file| data = file.readlines}

data.each do |prod|
ls = prod.split(', ')
products_list.push(Product.new(*ls))
end

products_list.each do |e|
    puts "Producto #{e.name}, promedio = #{e.average}"
end