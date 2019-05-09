class Dog
    attr_accessor :nombre, :color, :raza
    def initialize(propiedades = {})
        @nombre = propiedades[:nombre]
        @raza = propiedades[:raza]
        @color = propiedades[:color]
    end

    def ladrar
        puts "#{@nombre} esta ladrando"
    end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)

perro.ladrar