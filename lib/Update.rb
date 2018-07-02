require 'rubygems'
require 'spreadsheet'
require_relative 'Utilitaries'

# Conjunto de métodos utilizados para atualizar informações de um evento ja presente na planilha.
class Update
	# Atualiza os dados de um determinado evento da planilha com novos valores entrados pelo usuário na forma de texto pelo terminal.
	#
	# @return [Void] Sem retorno.
	def self.AtualizarPlanilha
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

	# Percorre a planilha procurando um evento identificado por @nome e atualiza a informação da coluna @posicao com o valor @valor_novo.
	#
	# @param nome [String] Nome do evento a ser procurado.
	# @param valor_novo [String] Novo valor a ser atribuido.
	# @param posicao [Numeric] Coluna do evento que esta sendo atualizada.
	# @return [Void] Sem retorno.
	def self.PercorrerPlanilha(nome, valor_novo, posicao)
		Spreadsheet.open 'data/Events.xls' do |planilha|
			sheet = planilha.worksheet 0	

			sheet.each 1 do |row|
					if row[0] == nome 
						row[posicao] = valor_novo			
					end			
			end
			planilha.write('UpdateOutput.xls')
		end
	end
end
