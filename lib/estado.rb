require 'rubygems'
require 'state_machine'
require_relative 'Update.rb'

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
	

	state :update do
		Update.AtualizarPlanilha()
		end
	state :cadastro do
		Register.ExecuteRegister()		
		end
	state :decisao do
		Decisao.AnalisarPlanilha()
		end
	
	end

end
