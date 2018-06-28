require 'spreadsheet'
require_relative 'Utilitaries'

class Report
	def self.OnVisualize
		puts "---Visualização de Relatório---"
		puts "Digite o nome do evento que deseja visualizar o relatório mais recente"
		nome = gets.chomp
		Utilitaries.ScreenClear
		CallReport(nome)
	end

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
	end
end

#Report.OnVisualize