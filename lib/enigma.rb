require 'date'

class Enigma

  attr_reader :message,
              :key,
              :date,


  def encrypt(message, key = random_key, date = default_date)
    @message = message.downcase
    @key     = key
    @date    = date
    #@shift = shift(@key, @date)
  end

  def random_key # creates a random 5 digit integer as a string. Ex: 00435, 59174
    rand(0..99999).to_s.rjust(5, '0')
  end

  def todays_date # generates todays date as a string DDMMYY
   Date.today.strftime('%d%m%y')
 end
end
