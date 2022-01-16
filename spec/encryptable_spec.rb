require 'simplecov'
SimpleCov.start
require 'date'
require './lib/encryptable'

 RSpec.describe Encryptable do
   include Encryptable
   before(:each) do
     @message = "hello world"
     @key =      "02715"
     @date = "040895"
   end

   it 'genrates a character set' do
    expected = (("a".."z").to_a << " ")

    expect(valid_characters).to eq(expected)
  end

  it 'can calculate an #offset_value' do

    expect(offset_value(@date)).to eq("1025")
  end
end
