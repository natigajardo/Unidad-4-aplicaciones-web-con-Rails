class Alumno
    #notas en un array de notas 
    attr_accessor :nombre, :notas
    def initialize(nombre, notas)
        @nombre = nombre
        @notas = notas
    end 

    def promedio
        @notas.sum / @notas.count
    end 
end

alumnos = []
5.times.each do |i|
    nombre = "Alumno_#{i}"
    notas = [rand(1..7),rand(1..7),rand(1..7),rand(1..7)]
    alumno = Alumno.new(nombre, notas)
    alumnos.push(alumno)
end 

pp alumnos 

def mejor(list_alumnos)
    mejor_alumno = list_alumnos[0].nombre
    nota_mayor = list_alumnos[0].notas.max 
    list_alumnos.each do |alumno|
        if nota_mayor < alumno.notas.max
            nota_mayor = alumno.notas.max
            mejor_alumno = alumno.nombre 
        end
    end 
    pp "#{mejor_alumno} es #{nota_mayor}"
end

mejor(alumnos)


