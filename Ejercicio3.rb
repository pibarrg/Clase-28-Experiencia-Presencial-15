# def contador(archivo)
#   file = File.open(archivo, 'r')
#   data = file.readlines
#   file.close
#
#   total = 0
#
#   data.each do |line|
#     total = total + line.split(' ').count
#   end
#   total
# end
# puts contador('peliculas.txt')

def contador(archivo, palabra='La')
  file = File.open(archivo, 'r')
  data = file.readlines
  file.close

  total_palabras = 0

  data.each do |line|
    line.split(' ').each do |word|
      total_palabras += 1 if word == palabra
    end
  end
  total_palabras
end
puts contador('peliculas.txt', 'La')
