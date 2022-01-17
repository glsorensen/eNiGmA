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
end
