class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

cartas = []
pintas = ['C','D','E','T']
5.times{
    n = rand(1..13)
    c = pintas.sample()
    cartas.push(Carta.new(n, c))
}
pp cartas