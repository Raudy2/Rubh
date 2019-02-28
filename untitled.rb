# class Mamifero
# 	def respirar
# 		puts 'Respira puto'
# 	end
# end

# class Gato < Mamifero
# 	def maullar
# 		puts 'MIAAAAAAAAuuuu'
# 	end
# end

# cribas = Gato.new
# cribas.respirar
# cribas.maullar

class Video
	attr_accessor :title, :duration
end

class YouTube < Video
	attr_accessor :youtube_id
end

yt = YouTube.new

yt.title = "Herencia en python"
puts yt.title