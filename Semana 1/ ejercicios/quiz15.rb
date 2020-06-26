class Casa
    attr_accessor :pisos
    def initialize(pisos = 1)
        pisos
    end 
end

casa1 = Casa.new(5)
puts casa1.pisos 

