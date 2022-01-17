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

     @offset =  "1025"

   end

   it 'genrates a character set' do
    expected = (("a".."z").to_a << " ")

    expect(valid_characters).to eq(expected)
  end

  it 'can calculate an #offset_value' do

    expect(offset_value(@date)).to eq("1025")
  end

  it 'can do #the_shift from given key and offset to use in #shift' do

    expect(the_shift(@offset, @key)).to eq [3, 27, 73, 20]
  end



  it 'returns an array of the shifts from given key and date' do

    expect(calculate_shift(@key, @offset)).to eq([3, 27, 73, 20])
  end
end
