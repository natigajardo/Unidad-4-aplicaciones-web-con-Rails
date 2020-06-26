class Vehiculo
    def encender
        @encendido = :on
    end

    def estado
        @encendido
    end
end

v = Vehiculo.new
v.encender 
puts v.estado.class 

