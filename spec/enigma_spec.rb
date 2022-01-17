require 'simplecov'
SimpleCov.start
require 'date'
require './lib/enigma'
require './lib/encryptable'
require './lib/shiftable'


 RSpec.describe Enigma do
   include Shiftable
 	before(:each) do
 		@enigma = Enigma.new
    @message = "hello world"
    @key =      "02715"
    @date = "040895"

    @offset_value = "1025"
  end

 	it 'exists' do
 		expect(@enigma).to be_a Enigma
 	end


  describe '#encrypt' do
    it 'returns a hash with cipher text, key, and date' do
      expected = {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
      }
      expect(@enigma.encrypt(@message, @key, @date)).to eq(expected)
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
