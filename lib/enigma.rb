require 'date'
require './lib/shiftable'
require './lib/encryptable'
require './lib/defaultable'

class Enigma
  include Shiftable
  include Defaultable
  include Encryptable

  attr_reader :message,
              :key,
              :date,
              :encrypted


  def encrypt(message, key = random_key, date = todays_date)
    @message = message.downcase
    @key     = key
    @date    = date
    shift = shift(@key, @date)
    @encrypted = {encryption: cypher(@message, shift), key: @key, date: @date}
  end
end
