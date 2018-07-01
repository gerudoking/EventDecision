require 'spec_helper'

describe '#program_exit' do
	it 'changes the state from base to quit' do
		estado = Estado.new
		estado.quit
		expect(estado.state).to eq("quit")
	end
end