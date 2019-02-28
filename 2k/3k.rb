class Menu
	def initialize
	end
	def main
		option = 0
		while option != 4
			puts "Choose an Option \n1-Entrar \n2- Ver \n3- agregar \n4- Salir"
			option = gets.chomp.to_i
		end
	end
end