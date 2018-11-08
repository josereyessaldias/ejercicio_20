module Formula
  def perimetro
    puts lado**2 if self.class == Cuadrado
    puts base*altura if self.class == Rectangulo
  end
end

class Rectangulo
  include Formula
  attr_accessor :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    puts "La base del rectángulo es #{base} y la altura es #{@altura}."
  end
end

class Cuadrado
  include Formula
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "La lados del cuadrado es #{@lado}."
  end
end

a = Cuadrado.new(4)
a.perimetro

b = Rectangulo.new(3,5)
b.perimetro
