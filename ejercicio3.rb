# ## Ejercicio 3: Rack
# Se tiene el archivo *config.ru* :

# ~~~rb
# # config.ru
# require 'rack'
# class MiPrimeraWebApp
#   def call(env)
#     if env['REQUEST_PATH'] == '/'
#       [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
#     end
#   end
# end
# run MiPrimeraWebApp.new
# ~~~

# Crear un archivo llamado *404.html* cuyo *body* contenga una etiqueta de título con el texto *"No se ha encontrado la página :("*.

# Modificar el archivo ***config.ru*** para adaptarlo a los siguientes requerimientos:

#  - Si se ingresa a la url ***/index***: 
#     - Agregar un código de respuesta ***200***.
#     - Agregar en los *Response Headers* un *Content-type* de tipo *text/html*.
#     - Agregar en el *Response Body* una etiqueta de título que contenga un texto *"Estás en el Index!"*.
# - Si se ingresa a la url ***/otro***:
#     - Agregar un código de respuesta ***200***.
#     - Agregar en los *Response Headers* un *Content-type* de tipo *text/html*.
#     - Agregar en el *Response Body* una etiqueta de título que contenga un texto *"Estás en otro landing!"*.
# - Si se ingresa a cualquier otra url:
#     - Agregar un código de respuesta ***404***.
#     - Agregar en los *Response Headers* un *Content-type* de tipo *text/html*.
#     - Agregar en el *Response Body* el archivo *404.html* creado al inicio.