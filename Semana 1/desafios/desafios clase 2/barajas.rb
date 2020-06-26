require_relative "carta2.rb"

class Baraja
    attr_accessor :cartas
    def initialize
        # C corazon, D Diamante, E espada, T trebol 
        pintas = ['C','D','E','T']

        @cartas =[]
        pintas.each do |pinta|
            13.times do |i|
                #carta_temp = Carta.new( i+1 , pinta)
                #@cartas.push (carta_temp)
                @cartas.push(Carta.new(i+1, pinta))
            end
        end
    end 

    def barajar
        @cartas = @cartas.shuffle
    end 

    def sacar
        @cartas.pop
    end 

    def repartir_mano
        mano = []
        5.times do 
            mano.push(sacar)
        end
        mano 
    end

end 

baraja_1 = Baraja.new

pp baraja_1 
pp baraja_1.sacar 
pp baraja_1.repartir_mano  
baraja_1.cartas = baraja_1.barajar 
pp baraja_1.repartir_mano 
