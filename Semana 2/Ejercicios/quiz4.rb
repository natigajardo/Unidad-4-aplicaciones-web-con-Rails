class Persona
    def initialize
        @edad = 0
    end

    def envejecer
        self.edad += 1
    end

    def envejecer_rapido
        10.times {self.envejecer}
    end
end

puts Persona.new.envejecer_rapido 