require 'spec_helper'

describe Silvio do
	it 'rocks' do
		silvio = Silvio.new
		expect(silvio.start).to eq('rocks')
  end

  # Change the constructor of the Silvio class, so that it optionally takes the name of the user as an argument.
  # If the user name argument is not specified it should take user name = 'silvio' as the default user name.
  # Add an instance method 'like_to_work', to the silvio class that returns the following string:
  # 'I, <user name> like to work with silvio'
  #
  # Use RSpec based test driven development to implement the above excercise.
end
