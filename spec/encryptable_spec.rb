require 'simplecov'
SimpleCov.start
require 'date'
require './lib/encryptable'

 RSpec.describe Encryptable do


  it 'genrates a character set' do
    expected = (("a".."z").to_a << " ")

    expect(valid_chars).to eq(expected)
  end
end
