require_relative 'Estado'
require_relative 'Utilitaries'

Utilitaries.ScreenClear

estado = Estado.new
option = "5"

while !estado.quit?
	puts "---Event Decision---"
	puts "1 - Registrar Evento"
	puts "2 - Atualizar Evento"
	puts "3 - Fazer Decisão"
	puts "4 - Visualizar Relatório"
	puts "5 - Sair do Programa"

	option = gets.chomp

	case option
	when "1"
		estado.cadastro
		estado.retornar
	when "2"
		estado.update
		estado.retornar
	when "3"
		estado.decisao
		estado.retornar
	when "4"
		estado.visualizar
		estado.retornar
	when "5"
		estado.quit
	end

end