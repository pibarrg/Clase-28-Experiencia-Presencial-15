continuar = true #variable es verdadera hasta que usuario decida que es falsa.

while continuar == true
  puts 'Ingrese una opción'
  puts '1: Mostrar productos existentes'
  puts '2: Consultar productos'
  puts '3: Consultar productos no registrados'
  puts '4: Consultar menor a..'
  puts '5: Registrar nuevo producto'
  puts '6: Salir'

  opcion = gets

  if opcion.to_i == 1
    puts 'a) Existencia por producto'
    puts 'b) Existencia total por tienda'
    puts 'c) Existencia total en todas las tiendas'
    puts 'd) Volver al menú principal'

    opcion_submenu = gets.chomp # el chomp lo uso para sacar \n de a\n

    if opcion_submenu == 'a'
      file = File.open('productos.txt', 'r')
      data = file.readlines
      file.close

      arreglo_totales = []

      data.each do |line|
        total = 0
        arreglo = line.split(', ')
        total += arreglo[1].to_i + arreglo[2].to_i + arreglo[3].to_i
        arreglo_totales.push([arreglo[0], total]) #el push() tambien se puede expresar com arreglo_totales << [arreglo[0], total]
      end
      # [['producto1', 200], ['producto2', 300]]
        arreglo_totales.each do |ele|
          puts "El producto #{ele.first} tiene un total de #{ele.last}"
        end
      end
  end

  if opcion == 6
    continuar == false
  end

end
