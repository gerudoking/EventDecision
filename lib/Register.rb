require 'rubygems'
require 'spreadsheet'
require_relative'Utilitaries'

# Conjunto de métodos utilizados para adicionar novos eventos à planilha.
class Register
	# Adiciona um novo evento à planilha com entradas de dados do usuário na forma de texto pelo terminal.
	#
	# @return [Void] Sem retorno.
	def self.ExecuteRegister
		Spreadsheet.open 'data/Events.xls' do |planilha|
			puts "---Cadastro de Eventos---"

			puts "Insira o nome do evento"
			nome = gets.chomp
			
			puts "Pontue de 0 a 10 cada valor a seguir(Quão mais próximo de 0 melhor)"

			puts "A quantidade da população que é vacinada(10 corresponde a não existência da vacina)"
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
			planilha.write('EventsOutput.xls')
		end
		Utilitaries.UpdateEvents('EventsOutput.xls')
	end
end
