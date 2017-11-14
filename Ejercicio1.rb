# def escribir(nombre, apellido)
# File.open('index.html', 'w') { |file| file.puts "<p>#{nombre}</p>" + "<p>#{apellido}</p>"}
# end
#
# escribir('Patricio', 'Ibarra')

def escribir(nombre, apellido, edad)
File.open('index.html', 'w') { |file| file.puts "<p>#{nombre}</p>" + "<p>#{apellido}</p>"}
if edad == ""
  puts ""
else
puts "<p>#{nombre}</p>" + "<p>#{apellido}</p>"
end


end

escribir('Patricio', 'Ibarra')
