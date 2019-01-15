#config.ru
require 'rack'

class MiPrimeraWebApp
  def call(env)
    case env['REQUEST_PATH']
    when '/'
      [202, {"Content-Type" => "text/html"}, ["<h1> INDEX </h1>"]]
    when /index/
      [200, {"Content-Type" => "text/html"}, ["Estas en el Index!"]]      
    when /otro/  
      [200, {"Content-Type" => "text/html"}, ["<h4>Estas en otro landing!</h4>"]]
    else
      [404, {"Content-Type" => "text/html"}, [File.read("404.html")]]
    end
  end
end

run MiPrimeraWebApp.new

