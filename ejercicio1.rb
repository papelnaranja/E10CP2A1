# ## Ejercicio 1: Método de clase
# El archivo *notas.txt* contiene las notas de 4 alumnos.

# ~~~
# David, 90, 60, 10, 30
# Mai, 40, 34, 77, 11
# Gonzalo, 34, 86, 55, 91
# JP, 100, 100, 100, 99
# ~~~

# La clase *Alumno* posee un constructor que recibe el nombre del alumno junto a sus cuatro notas.


class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end
  def self.read_file(file_name = 'notas.txt')
    alumnos = []
    data = []
    File.open(file_name, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    p alumnos
  end
end




# alumnos = []
# data = []
# File.open('notas.txt', 'r') { |file| data = file.readlines }
# data.each do |alumno|
#   alumnos << Alumno.new(*alumno.split(', '))
# end
alumnos_array = Alumno.read_file
print alumnos_array
# ~~~
# Se pide:

# - Crear un método de clase llamado *read_file* que reciba como argumento el <u>nombre del archivo</u> (por defecto debe ser 'notas.txt') y devuelva la colección de objetos. El método debe alojar las instrucciones que se encuentran después de la clase. Finalmente imprimir la colección de objetos generada.
#     >Hint: Debes reemplazar el argumento de *File.open* con el nombre del argumento del método *read_file*.