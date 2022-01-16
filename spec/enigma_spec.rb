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

 	it 'has attributes' do
 		expect(@enigma.attribute).to eq (attribute)
 	end
 end
