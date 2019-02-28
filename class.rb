class Ans
	attr_accessor :name, :last_name, :old
	def initialize(name,last_name,old)
		@name = name
		@last_name = last_name
		@old = old
	end
end

style = Ans.new("Raudy","Beltre","17")
puts style.name + " " + style.last_name + " " + style.old