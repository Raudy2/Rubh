require_relative "persona.rb"

class Desarrollador < Persona

	attr_accessor :lenguaje_favorito
	def initialize()
	end

	def programar()
		return "Programando en " + @lenguaje_favorito
	end

	def debugear()
		puts "Debugeando..."
	end
end

d = Desarrollador.new()
d.lenguaje_favorito = "Ruby on Rails"
d.nombre = "Raudy Beltre "
puts d.nombre + "Esta " + d.programar()