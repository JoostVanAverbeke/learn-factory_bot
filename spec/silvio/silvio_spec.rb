require 'spec_helper'

describe Silvio do
	it 'rocks' do
		silvio = Silvio.new
		expect(silvio.start).to eq('rocks')
	end
end
