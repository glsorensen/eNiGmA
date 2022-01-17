require 'date'

module Defaultable

  def random_key # creates a random 5 digit integer as a string. Ex: 00435, 59174
    rand(0..99999).to_s.rjust(5, '0')
  end

  def todays_date # generates todays date as a string DDMMYY
   Date.today.strftime('%d%m%y')
 end

 def valid_characters
   ("a".."z").to_a << " "
 end
end
