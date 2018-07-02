require 'rubygems'
require 'spreadsheet'
require_relative 'Utilitaries'
require_relative 'Report'

# Conjunto de métodos utilizados para o calculo da decisão para os eventos presentes na planilha.
class Decisao
	# Percorre a planilha processando os dados dos eventos e calculando a decisão.
	#
	# @return [Void] Sem retorno.
	def self.AnalisarPlanilha
		Spreadsheet.open 'data/Events.xls' do |planilha|
			sheet = planilha.worksheet 0

			@valorLimite = 60
			@ponderador = 2.4
			@pontuacao = 0	

			sheet.each 1 do |row|
				[row[0],row[1],row[2],row[3],row[4]].each do |valor|
					@pontuacao += (valor.to_i)*@ponderador
				end

				row[5] = @pontuacao

				if @pontuacao > @valorLimite
					row[6] = "ACOMPANHAR"
				else
					row[6] = "NORMAL"
				end
				@pontuacao = 0
			end
			planilha.write('EventsDecided.xls')
		end
		Utilitaries.UpdateEvents('EventsDecided.xls')
		puts "Eventos decididos. Visualizar relatório de evento desejado para ver a decisão."
		gets.chomp
	end
end
