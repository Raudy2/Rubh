pass = ask("Ingrese la contraseña para Continuar: ").to_i
		puts case pass 
		when 1013,1456
			return view
		when 1452,2467
			return view
		else
			puts "La contraseña es incorrecta intente de nuevo"
			sleep 2
			system("clear")
			return start
			while analizar == 4
				break
			end
		end


		num = 1 + rand(10000)
		p "Tu cantidad actual es de #{num}"










































			def enter
		ente = ask("Cuanto desea Ingresar ('Cantidad maxima $10,000 Cantidad minima $500')").to_i
		if ente <= 10000
			factura = ask("Desea Imprimir su factura?")
			if factura == "si"
				print "A Ingresado #{ente} A su cuenta \n"
				sleep 2
				system("clear")
				return view
			else
				system("clear")
				return view
			end
		else
			puts "Hasta luego :)"
			sleep 2
			system("clear")
			return view
		end
	end

	def remove
		rem = ask("Cuanto dinero desea Retirar:").to_i
		if rem <= 10000
			puts "Usted a retirado #{rem}.\nVuelva Pronto "
			sleep 2
			system("clear")
			return view
		else
			puts "Esa cantidad supera los limites de retiro por cajero "
		end
	end

	def consult
		CSV.foreach("precios.csv") do |cantidad|
			puts "Tu cantidad actual es de #{cantidad}"
		end
		sleep 2
		system("clear")
		return view
	end

	def salir
		puts "Hasta luego"
	end