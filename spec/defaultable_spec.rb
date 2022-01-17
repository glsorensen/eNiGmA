require 'simplecov'
SimpleCov.start
require 'date'
require './lib/defaultable'

 RSpec.describe Defaultable do
   include Defaultable

   it 'genrates a character set' do
    expected = (("a".."z").to_a << " ")

    expect(valid_characters).to eq(expected)
  end

   it 'genrates a #random_key' do


     expect(random_key.length).to eq(5)
      expect(random_key.to_i > 0).to eq(true)
  end

  it 'returns todays date' do

    expected = Date.today.strftime('%d%m%y')

    expect(todays_date.length).to eq(6)
    expect(todays_date.to_i > 0).to eq(true)
    expect(todays_date).to eq(expected)
  end
end
