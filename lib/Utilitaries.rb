require 'fileutils'

class Utilitaries

	# Atualiza a planilha de eventos na pasta data
	# Params:
	# - src: O arquivo fonte da atualização
	def self.UpdateEvents(src)
		File.rename(src, "Events.xls")
		File.delete("data/Events.xls")
		FileUtils.cp("Events.xls", "data")
	end
end