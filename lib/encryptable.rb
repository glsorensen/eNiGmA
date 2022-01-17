require 'date'
require './lib/defaultable'


module Encryptable
  include Defaultable

  def cypher(message, shift)
    #set an accumulator to recieve encrypted letters
    encrypted_message = ''
    #go through each character in the message string
    message.each_char do |char|
      #if character in message is not part of #valid_characters
      if valid_characters.include?(char) == false
        #put that unchanged character at the end if the encrypted_message accumulator
        encrypted_message.concat(char)
      else   #if it is a #valid_character
        new_char = valid_characters.index(char) + shift[0]
            #add the position of the character in the
            #valid_characters to the given shift in position [0] and set to a variable
        encrypted_message.concat(valid_characters.rotate(new_char)[0])
            #rotate the #valid_characters by the value in the new_char variable
            #pick the letter in the [0] position
            #add that letter to the end of the encrypted_message string
        shift.rotate! #permanantly rotate the given shift one poistion for the next iteration
      end
    end
    encrypted_message
  end

  def decypher(message, un_shift)
    decrypted_message = ''
    message.each_char do |char|
      if valid_characters.include?(char) == false
        decrypted_message.concat(char)
      else
        char_index    = valid_characters.index(char)
        require 'pry'; binding.pry
        set_the_wheel = valid_characters.rotate(char_index)
        decrypted_message.concat(set_the_wheel.rotate((un_shift[0] * -1))[0])
        un_shift.rotate!
      end
    end
    decrypted_message
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
