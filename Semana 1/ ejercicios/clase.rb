class Persona
  def saludar
    puts "hola!"
  end
end

class Perro
  def ladrar
    puts "bark"
  end
end

sparky = Perro.new
fluffy = Perro.new

sparky.ladrar
fluffy.ladrar 