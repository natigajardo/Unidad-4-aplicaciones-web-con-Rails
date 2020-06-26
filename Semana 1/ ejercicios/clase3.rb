class Mascota
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre 
    end
end

primera_mascota = Mascota.new("Spike")
puts primera_mascota.nombre 