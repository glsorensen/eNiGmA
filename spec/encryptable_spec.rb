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
    @message = "hello world"
    @key =      "02715"
    @date = "040895"
    @shift = [3, 27, 73, 20]
    @encrypt_message = "keder ohulw"

    @offset =  "1025"
  end

  it '#cyper shifts a string using given shifts' do
    expect(cypher(@message, @shift)).to eq("keder ohulw")
  end

  it '#decypher shifts a string using given shifts' do
    expect(decypher(@encrypt_message, @shift)).to eq @message
  end
end
