def cantidadlineas(archivo)
  file = File.open(archivo,'r')
  data = file.readlines
  file.close

  data.count
end

puts cantidadlineas('peliculas.txt')
