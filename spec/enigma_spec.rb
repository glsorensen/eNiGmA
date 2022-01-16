require 'simplecov'
SimpleCov.start
require 'date'
require './lib/enigma'

 RSpec.describe Enigma do
 	before(:each) do
 		@enigma = Enigma.new#("hello world", "02715", "040895")

    @message = "hello world"
    @key =      "02715"
    @date = "040895"



 	end

 	it 'exists' do
 		expect(@enigma).to be_a Enigma
 	end


  it 'returns a random key' do
      expect(@enigma.random_key.length).to eq(5)
      expect(@enigma.random_key.to_i > 0).to eq(true)
    end

  it 'returns todays date' do
    expect(@enigma.todays_date.length).to eq(6)
    expect(@enigma.todays_date.to_i > 0).to eq(true)
  end

  describe '#encrypt' do
    xit 'returns a hash with cipher text, key, and date' do
      expected = {
        encryption: "keder ohulw!tlmsvrb",
        key: "02715",
        date: "040895"
      }
      expect(@enigma.encrypt("hello world! im bob", "02715", "040895")).to eq(expected)
    end
  end

  describe '#decrypt' do
    xit 'returns a hash with plain text, key, and date' do
      expected = {
        decryption: "hello world! im bob",
        key: "02715",
        date: "040895"
      }
      expect(@enigma.decrypt("keder ohulw!tlmsvrb", "02715", "040895")).to eq(expected)
    end
  end

end
