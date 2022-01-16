require 'simplecov'
SimpleCov.start
require 'date'
require './lib/enigma'

 RSpec.describe Enigma do
 	before(:each) do
 		@enigma = Enigma.new

    @today = Date.today
    @message = "hello world"
    @key = "02715"
    @date = "040895"


 	end

 	it 'exists' do
 		expect(@enigma).to be_a Enigma
 	end

  it 'returns a random key' do
      expect(@enigma.random_key.length).to eq(5)
      expect(@enigma.random_key.to_i > 0).to eq(true)
    end

 	xit 'has attributes' do
 		expect(@enigma.attribute).to eq (attribute)
 	end
end
