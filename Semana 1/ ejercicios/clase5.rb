class Punto
    attr_reader :x, :y
    def initialize(x, y)
        @x = x
        @y = y
    end 

    def avanzar
        @x += 1
    end 
end 

p1 = Punto.new(2,3)
puts p1.avanzar 

