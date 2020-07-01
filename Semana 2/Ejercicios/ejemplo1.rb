class Padre 
    attr_accessor :nombre 
    def initialize(nombre)
    @nombre = nombre
  end
end

class Hija < Padre
end

fernanda = Hija.new("Fernanda") 
puts fernanda.nombre