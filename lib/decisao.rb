require 'rubygems'
require 'spreadsheet'

class Decisao
	def AnalisarPlanilha()
		planilha = Spreadsheet.open('data/Events.xls')
		sheet = planilha.worksheet 0

		@valorLimite = 60
		@ponderador = 2.4
		@pontuacao = 0	

		sheet.each do |row|
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
		planilha.write('data/EventsDecided.xls')
	end

end

#teste = Decisao.new
#teste.AnalisarPlanilha()
