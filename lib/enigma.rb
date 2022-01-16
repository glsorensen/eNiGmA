require 'date'

class Enigma

  attr_reader :message,
              :key,
              :date



  def encrypt(message, key = random_key, date = default_date)
    @message = message.downcase
    @key     = key
    @date    = date
    shift = shift(@key, @date)
    date}
  end
