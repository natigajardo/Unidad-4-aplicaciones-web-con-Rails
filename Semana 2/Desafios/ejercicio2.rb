module Habilidades
    
    module Volador
        def volar
             'Estoy volandooooo!'
        end

        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion

    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

#Crear la clase Animal con un atributo nombre . Agregar un método getter para el atributo nombre (1 punto)
class Animal 
    attr_accessor :name 
    def initialize(name)
        @name = name
    end 
end 

#Crear las clases Ave , Mamifero e Insecto . Ambas heredan de Animal (1 punto)

class Ave < Animal 
    #include Habilidades::Volador
    #include Habilidades::Caminante
    #include Habilidades::Nadador
    #include Alimentacion::Carnivoro
    #include Alimentacion::Herbivoro   
end 

class Mamifero < Animal 
    #include Habilidades::Nadador
    #include Habilidades::Caminante
    #include Alimentacion::Carnivoro
    #include Alimentacion::Herbivoro 
end

class Insecto < Animal
    #include Habilidades::Volador 
    #include Habilidades::Caminante
    #include Alimentacion::Herbivoro  
end 

#Crear las clases Pingüino , Paloma y Pato . Las tres heredan de Ave (1 punto)

class Pinguino < Ave 
    include Habilidades::Nadador 
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Caminante
    include Habilidades::Volador
    include Alimentacion::Herbivoro 
end

class Pato < Ave 
    include Habilidades::Caminante
    include Habilidades::Nadador 
    include Habilidades::Volador
    include Alimentacion::Carnivoro
    alias :carnivoro_nuevo :comer 
    include Alimentacion::Herbivoro
end 

#Crear las clases Perro , Gato y Vaca . Las tres heredan de Mamifero (1 punto)

class Perro < Mamifero 
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
    alias :carnivoro_nuevo :comer 
    include Alimentacion::Herbivoro 
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro 
end

class Vaca < Mamifero 
    include Habilidades::Caminante
    include Alimentacion::Herbivoro 
end 

#Crear las clases Mosca , Mariposa y Abeja . Las tres heredan de Insecto (1 punto)

class Mosca < Insecto 
    include Habilidades::Caminante
    include Habilidades::Volador
    include Alimentacion::Carnivoro
    alias :carnivoro_nuevo :comer 
    include Alimentacion::Herbivoro  
end

class Mariposa < Insecto
    include Habilidades::Caminante
    include Habilidades::Volador
    include Alimentacion::Herbivoro 
end 

class Abeja < Insecto
    include Habilidades::Caminante
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end 

#Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de definir las habilidades y tipo de alimentación de cada animal (2 puntos)

abeja_1 = Abeja.new("Ramona")
puts abeja_1.comer
puts abeja_1.volar
puts abeja_1.aterrizar 

perro = Perro.new("Bobby")
puts perro.carnivoro_nuevo
puts perro.comer 
puts perro.nadar 
puts perro.caminar 