require 'csv'

class Banco
	attr_accessor :pass, :remove, :enter, :consult, :view, :start
	def initialize(pass,remove,enter,consult,view,start)
	end

	def ask(question)
		print question
		return gets.chomp()
	end
	def start
		pass = ask("Ingrese la contraseña para Continuar: ").to_i
		CSV.foreach("brad.csv") do |id,dinero|
			if id.to_i == pass
				return view
			end
		end
	end
	def view 
		analizar = ask("Opciones del cajero\n1-Ingresar\t2-Retirar\t3-Consultar\t4-Salir: \nCashier options\n1-Enter \t2-Remove\t3-Consult\t4-Exit: ").to_i
		if analizar == 1 
			return enter
		elsif analizar == 2
			return remove
		elsif analizar == 3
			return consult
		elsif analizar == 4
			return salir
		else
			puts "Elija una de las opciones por favor"
			return view
		end
	end

	def enter
		ente = ask("Cuanto desea Ingresar ('Cantidad maxima $10,000 Cantidad minima $500'): ").to_i
		if ente <= 10000
			factura = ask("Desea Imprimir su factura? ")
			if factura == "si"
				print "A Ingresado #{ente} A su cuenta \n"
				sleep 1
				system("clear")
				return view
			else
				system("clear")
				return view
			end
		else
			sleep 1
			system("clear")
			return view
		end
	end

	def remove
		rem = ask("Cuanto dinero desea Retirar: ").to_i
		if rem <= 10000
			puts "Usted a retirado #{rem}."
			sleep 1
			system("clear")
			return view
		else
			puts "Esa cantidad supera los limites de retiro por cajero "
			sleep 1
			system("clear")
			return view
		end
	end

	def consult
		num = 1 + rand(10000)
		p "Tu cantidad actual es de #{num}"
		sleep 1
		system("clear")
		return view
	end
	def salir
		print "Hasta luego"
	end
end

resul = Banco.new("View","enter","remove","Consult","pass", "start")
puts resul.start