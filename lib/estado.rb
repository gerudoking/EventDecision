require 'rubygems'
require 'state_machine'

class Estado

	state_machine :state, initial: :base do
	
	event :decisao do
		transition :base => :decisao
		end
	event :update do
		transition :base => :update
		end
	event :cadastro do
		transition :base => :cadastro
		end
	event :visualizar do
		transition :base => :visualizar
		end
	event :retornar do
		transition any => :base
		end
	end

end
