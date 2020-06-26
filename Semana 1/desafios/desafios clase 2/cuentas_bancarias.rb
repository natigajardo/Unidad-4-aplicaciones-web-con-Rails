class Usuario
    def initialize(nombre_usuario, cuentas_bancarias)
        @nombre_usuario = nombre_usuario
        @cuentas_bancarias = cuentas_bancarias
    end

    attr_accessor :saldo_total 
    def saldo_total
        #saldo_total = 0
        #@cuentas_bancarias.count.times do |i|
        #    saldo_total += @cuentas_bancarias[i].saldo_total  
        #end
        #saldo_total 
        @cuentas_bancarias.map{ |cuenta| cuenta.saldo }.sum
    end 
end

class CuentaBancaria
    attr_accessor :saldo 
    def initialize(nombre_banco, numero_cuenta, saldo = 0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo 
    end 

    def transferir (monto, cuenta2)
        @saldo -= monto 
        cuenta2.saldo += monto 
    end 
end 

cuenta_uno = CuentaBancaria.new("Banco uno", "111", 5000)
cuenta_dos = CuentaBancaria.new("Banco dos", "222", 5000)

pp cuenta_uno
pp cuenta_dos

cuenta_uno.transferir(2000, cuenta_dos)

pp cuenta_uno
pp cuenta_dos

usuario = Usuario.new("Sebastian", [cuenta_uno, cuenta_dos])

puts "La suma de los saldos de todas las cuentas es : #{usuario.saldo_total}"  
