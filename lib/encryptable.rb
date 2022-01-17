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
