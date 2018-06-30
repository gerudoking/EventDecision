require 'rubygems'
require 'state_machine'
require_relative 'Update'
require_relative 'Utilitaries'
require_relative 'Register'
require_relative 'Report'
require_relative 'Decisao'

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
		event :quit do
			transition :base => :quit
		end
		
		before_transition :base => :decisao do |estado|
			Utilitaries.ScreenClear
			Decisao.AnalisarPlanilha()
			Utilitaries.ScreenClear
		end

		before_transition :base => :update do |estado|
			Utilitaries.ScreenClear
			Update.AtualizarPlanilha()
			Utilitaries.UpdateEvents('UpdateOutput.xls')
			Utilitaries.ScreenClear
		end

		before_transition :base => :cadastro do |estado|
			Utilitaries.ScreenClear
			Register.ExecuteRegister()
			Utilitaries.ScreenClear
		end

		before_transition :base => :visualizar do |estado|
			Utilitaries.ScreenClear
			Report.OnVisualize()
			Utilitaries.ScreenClear
		end
	
	end

end
