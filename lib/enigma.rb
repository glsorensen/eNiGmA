require 'date'

class Enigma
  include Shiftable
  include Defaultable

  attr_reader :message,
              :key,
              :date,


  def encrypt(message, key = random_key, date = todays_date)
    @message = message.downcase
    @key     = key
    @date    = date
    @shift = shift(@key, @date)
  end
end
