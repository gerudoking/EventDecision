#Não usar essa classe!

class Interface
	attr_accessor :toPrint
	@toPrint = ""

	def PrintText()
		system('cls') or system('clear')
		puts "#{@toPrint}"
	end
end