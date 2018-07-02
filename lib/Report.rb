require 'spreadsheet'
require_relative 'Utilitaries'

# Conjunto de métodos utilizados para visualizar os resultados da decisão para um evento da planilha.
class Report
	# Procura um determinado evento da planilha de nome identificado pelo usuário na forma de texto pelo terminal e apresenta os dados do mesmo.
	#
	# @return [Void] Sem retorno.
	def self.OnVisualize
		puts "---Visualização de Relatório---"
		puts "Digite o nome do evento que deseja visualizar o relatório mais recente"
		nome = gets.chomp
		Utilitaries.ScreenClear
		CallReport(nome)
	end

	# Procura o evento @nome na planilha e apresenta todos os dados associados no terminal para análise do relatório.
	#
	# @param nome [String] Nome do evento a ser procurado.
	# @return [Void] Sem retorno.
	def self.CallReport(nome)
		whatRow = 0
		planilha = Spreadsheet.open('data/Events.xls')
		sheet = planilha.worksheet 0
		sheet.each 1 do |row|
			if row[0] == nome 
				whatRow = row
				break
			end
		end

		puts "---Relatório sobre evento " + nome + "---"
		puts "\nImunidade da População: " + whatRow[1]
		puts "Qualidade de Vigilância: " + whatRow[2]
		puts "Performance de Programas: " + whatRow[3]
		puts "Avaliação de Risco: " + whatRow[4]
		puts "\nTotal de pontos: " + whatRow[5].to_s
		puts "\nDecisão atual: " + whatRow[6]

		gets.chomp
	end
end
