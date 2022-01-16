require 'date'

module Encryptable

    attr_reader :valid_chars

  def valid_chars
    ("a".."z").to_a << " "
  end
end
