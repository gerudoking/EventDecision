require 'rubygems'
require 'spreadsheet'
require_relative 'Utilitaries'

class Update
	def self.AtualizarPlanilha()
		puts "---Atualização de Eventos---"

		puts "Insira o nome do evento"
		nome = gets.chomp

		puts "Gostaria de alterar o nome do evento? S/N"
		resposta = gets.chomp

		if resposta == 'S' or resposta == 's'
			puts "Digite o nome novo do evento"
			resposta = gets.chomp
			PercorrerPlanilha(nome,resposta,0)
			nome = resposta
		end
		
		puts "Gostaria de alterar o valor de imunidade? S/N"
		resposta = gets.chomp

		if resposta == 'S' or resposta == 's'
			puts "Digite o novo valor"
			resposta = gets.chomp
			PercorrerPlanilha(nome,resposta,1)
			
		end

		puts "Gostaria de alterar o valor de vigilância? S/N"
		resposta = gets.chomp

		if resposta == 'S' or resposta == 's'
			puts "Digite o novo valor"
			resposta = gets.chomp
			PercorrerPlanilha(nome,resposta,2)
			
		end

		puts "Gostaria de alterar o valor de programa? S/N"
		resposta = gets.chomp

		if resposta == 'S' or resposta == 's'
			puts "Digite o novo valor"
			resposta = gets.chomp
			PercorrerPlanilha(nome,resposta,3)
			
		end

		puts "Gostaria de alterar o valor de ameaça? S/N"
		resposta = gets.chomp

		if resposta == 'S' or resposta == 's'
			puts "Digite o novo valor"
			resposta = gets.chomp
			PercorrerPlanilha(nome,resposta,4)
			
		end
	end

	def self.PercorrerPlanilha(nome,valor_novo,posicao)
		planilha = Spreadsheet.open('data/Events.xls')
		sheet = planilha.worksheet 0	

		sheet.each 1 do |row|
				if row[0] == nome 
					row[posicao] = valor_novo			
				end			
		end
		planilha.write('UpdateOutput.xls')
		Utilitaries.UpdateEvents('UpdateOutput.xls')
	end

end

#Update.AtualizarPlanilha()

