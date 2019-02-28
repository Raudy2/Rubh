calificaciones = %W[10 7 8 9 5 8 10]

suma = 0 

calificaciones.each_with_index do |calificacion|
	suma += calificacion.to_i
end

puts "El Promedio de tus calificaciones es #{suma.to_f / calificaciones.length}"