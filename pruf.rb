require "csv"

class Banco
	attr_accessor :pass, :remove, :enter, :consult, :view, :menu, :xer
	def initialize(pass,remove,enter,consult,view,menu,xer)end

	def ask(question)
		puts question
		return gets.chomp()
	end
	def xer
		CSV.foreach("precios.csv") do |id, name, cantidad|
			if lame
				puts case pass
				when 1452
					puts "Julio"
				when 1013
					puts "Raudy"
				when 1235
					puts "Israel"
				end
			end
		end
	end
	def menu
		pass = ask("Ingrese la contraseña para Continuar").to_i
		CSV.foreach("precios.csv") do |id, cantidad, name|
			if id.to_i == pass 
				return view
				break
			end
		end
	end

	def view
		analizar = ask("Opciones del cajero\n1-Ingresar\t2-Retirar\t3-Consultar\t4-Salir: \nCashier options\n1-Enter\t2-Remove\t3-Consult\t4-Exit").to_i
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
		while analizar == 4
			break
		end
	end
end
resul = Banco.new("pass", "remove", "enter", "consult", "view", "menu", "xer")
puts resul.menu
# puts resul.view