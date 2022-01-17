require 'date'
require './lib/defaultable'


module Encryptable
  include Defaultable

  def cypher(message, shift)
    encrypted_message = ''
    message.each_char do |char|
      if valid_characters.include?(char) == false
        encrypted_message.concat(char)
      else
        new_char = valid_characters.index(char) + shift[0]
        encrypted_message.concat(valid_characters.rotate(new_char)[0])
        shift.rotate!
      end
    end
    encrypted_message
  end
end 


 #
 #   def cypher(message, shift) # Shifts every valid character in a string and returns the shifted string
 #    counter = -1
 #    message.chars.map do |char|
 #      valid_characters.include?(char) ? shift_char(char, shift[(counter += 1) % 4]) : char
 #    end.join
 #  end
 #
 #  def shift_char(char, shift_num) # shifts a single character by a given amount
 #    index = (valid_characters.index(char) + shift_num) % valid_characters.length
 #    valid_characters[index]
 # end
