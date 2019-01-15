## Ejercicio 2:
# Se tienen las clases *Rectangulo* y *Cuadrado* cuyos constructores reciben las medidas de los lados correspondientes.

module Formula

  def perimetro(lado1,lado2 = lado1)
      @perimetro = (lado1*2) + (lado2*2)
  end

  def area(lado1,lado2 = lado1)
    @area = lado1 * lado2
  end

end


class Rectangulo
  include Formula
  attr_reader :base , :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    puts @lados = @altura
  end
end

class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end
  def lados
    puts @lados = @lado
  end
end

cuadradito = Cuadrado.new(10)
rect = Rectangulo.new(10,5)
cuadradito.lados
rect.lados
puts "El perimetro de cuadradito es: #{cuadradito.perimetro(10)}"
puts "El perimetro de rect es: #{rect.perimetro(10,5)}"
puts "El area de cuadradito es: #{cuadradito.area(10)}"
puts "El area de rect es: #{rect.area(10,5)}"


# 
# rect.lados
# Se pide:

# - Agregar un <u>método de instancia</u> llámado *lados* en ambas clases. El método debe imprimir un *string* con las medidas de los lados.

# - Crear un módulo llamado *Formula*. 

# - Dentro del módulo *Formula* crear un método llamado *perimetro* que reciba dos argumentos (lados) y devuelva el perímetro.

# - Dentro del módulo *Formula* crear un método llamado *area* que reciba dos argumentos (lados) y devuelva el área.

# - Implementar -mediante *Mixin*- el módulo en las clases *Rectangulo* y *Cuadrado*.

# - Instanciar un *Rectangulo* y un *Cuadrado*.

# - Imprimir el área y perímetro de los objetos instanciados utilizando el método del módulo implementado.