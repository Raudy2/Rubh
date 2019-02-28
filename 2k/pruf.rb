require_relative "3k.rb"
require "csv"

class Pass < Menu

	attr_accessor :pass, :remove, :enter, :consult, :view 
	def initialize(pass,remove,enter,consult,view)
	end

	def ask(question)
		puts question
		return gets.chomp()
	end

	def menu
		pass = ask("Ingrese la contraseña para Continuar").to_i
		CSV.foreach("precios.csv") do |id, cantidad|
			if id.to_i == pass
				return view
				break
			else
				puts "Error"
			end
		end
	end
end

d = Pass.new("pass","remove","enter","consult","view")
puts d.menu