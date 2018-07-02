require 'fileutils'

# Conjunto de métodos utilizados para atualização da interface de usuário e do arquivo da planilha de eventos.
class Utilitaries
	# Atualiza a planilha de eventos presente na pasta data substituindo a antiga planilha com uma nova identificada por @src.
	#
	# @param src [String] O arquivo fonte da atualização.
	# @return [Void] Sem retorno.
	def self.UpdateEvents(src)
		File.rename(src, "Events.xls")
		File.delete("data/Events.xls")
		FileUtils.cp("Events.xls", "data")
		File.delete("Events.xls")
	end

	# Limpa o texto mostrado no terminal de comando.
	#
	# @return [Void] Sem retorno.
	def self.ScreenClear
		system('cls') or system('clear')
	end
end
