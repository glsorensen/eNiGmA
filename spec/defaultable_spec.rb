require 'simplecov'
SimpleCov.start
require 'date'
require './lib/defaultable'

 RSpec.describe Defaultable do
   include Defaultable
   before(:each) do
     @message = "hello world"
     @key =      "02715"
     @date = "040895"

     @offset =  "1025"

   end

   it 'genrates a character set' do
    expected = (("a".."z").to_a << " ")

    expect(valid_characters).to eq(expected)
  end

   it 'genrates a #random_key' do


     expect(random_key.length).to eq(5)
      expect(random_key.to_i > 0).to eq(true)
  end

  it 'returns todays date' do

    expect(todays_date.length).to eq(6)
    expect(todays_date.to_i > 0).to eq(true)
  end
end
