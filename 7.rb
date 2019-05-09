class Product
    attr_accessor :name, :sizes
    def initialize(name, *sizes)
        @name = name
        @sizes = sizes.map{|e| e.to_i} #map{&:to_i}
    end

    def catalog
        return "#{self.name}, #{self.sizes[0..self.sizes.size-2].join(', ')}"
        #Deberia ser lo mismo que: return @name, @self
    end
end

products_list = []
data = []
output = []
File.open('catalogo.txt', 'r') {|file| data = file.readlines}

data.each do |prod|
    ls = prod.split(', ')
    products_list.push(Product.new(*ls))
end
print products_list

products_list.each do |products|
    output.push(products.catalog)
end

File.write('output.txt', output.join("\n"))