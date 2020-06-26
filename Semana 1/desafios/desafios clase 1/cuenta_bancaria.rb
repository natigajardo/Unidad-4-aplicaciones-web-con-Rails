class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        raise RangeError, "Numero de digitos de cuenta distinto a 8" if numero_de_cuenta.digits.count != 8

        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    def numero_de_cuenta
        puts "Número de cuenta => #{@vip}-#{@numero_de_cuenta}"
    end

end

cuenta = CuentaBancaria.new('Daniel', 12345678, 1)
print cuenta.numero_de_cuenta

#holahola 