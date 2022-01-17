require 'simplecov'
SimpleCov.start
require 'date'
require './lib/encryptable'
require './lib/defaultable'
require './lib/shiftable'


RSpec.describe Encryptable do
  include Encryptable
  include Defaultable
  include Shiftable
  before(:each) do
    @message = "he$llo w8*orld"
    @key =      "02715"
    @date = "040895"

    @offset =  "1025"
  end

  it 'shifts a string using given shifts' do
    expect(cypher(@message, [3, 27, 73, 20])).to eq("keder ohulw")
  end
end
