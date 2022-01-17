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
    @encrypted_message = "keder ohulw"

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
    it 'returns a hash with plain text, key, and date' do
      expected = {
        decryption: "hello world",
        key: "02715",
        date: "040895"
      }
      expect(@enigma.decrypt(@encrypted_message, @key, @date)).to eq(expected)
    end
  end
end
