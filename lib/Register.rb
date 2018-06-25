require 'rubygems'
require 'spreadsheet'

class Register
	def ExecuteRegister()
		planilha = Spreadsheet.open('data/Events.xls')

		puts "---Cadastro de Eventos---"

		puts "Insira o nome do evento"
		nome = gets.chomp
		
		puts "Pontue de 0 a 10 cada valor a seguir"

		puts "A quantidade da população que é vacinada(0 corresponde a não existência da vacina)"
		imunidade = gets.chomp

		puts "A qualidade da vigilância em relação ao evento"
		vigilancia = gets.chomp

		puts "A qualidade e quantidade de serviços de saúde relacionados ao evento"
		programa = gets.chomp

		puts "O risco que o evento apresenta"
		risco = gets.chomp

		sheet = planilha.worksheet(0)
		new_index = sheet.last_row_index + 1
		sheet.insert_row(new_index, [nome, imunidade, vigilancia, programa, risco])
		planilha.write('data/EventsOutput.xls')

		puts "Arquivo EventsOutput.xls criado. Substitua pelo Events.xls na pasta data."
	end
end

variavel = Register.new
variavel.ExecuteRegister()