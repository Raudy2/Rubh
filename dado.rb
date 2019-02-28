class Dado
	def roll
		1 + rand(6)
	end
end

dados = [Dado.new, Dado.new]

dados.each do |dado|
	puts dado.roll
end