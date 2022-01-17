require 'simplecov'
SimpleCov.start
require 'date'
require './lib/encryptable'
require './lib/shiftable'

 RSpec.describe Shiftable do
   include Shiftable
   before(:each) do
     @message = "hello world"
     @key =      "02715"
     @date = "040895"

     @offset =  "1025"

   end

  it 'can calculate an #offset_value' do
    expected = 1672401025

    expect(offset_value(@date)).to eq("1025")
  end

  it 'can do #the_shift from given key and offset to use in #shift' do

    expect(the_shift(@offset, @key)).to eq [3, 27, 73, 20]
  end



  it 'make shift callable with key and date' do

    expect(shift(@key, @date)).to eq([3, 27, 73, 20])
  end
end
