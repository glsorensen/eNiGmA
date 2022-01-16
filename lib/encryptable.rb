require 'date'

module Encryptable

  def valid_characters
    ("a".."z").to_a << " "
  end

  def offset_value(date)
    date_squared = date.to_i ** 2
    date_squared.to_s.slice(-4..-1)
  end
end
