require 'date'

module Encryptable

  def valid_characters
    ("a".."z").to_a << " "
  end

  def offset_value(date)
    date_squared = date.to_i ** 2
    date_squared.to_s.slice(-4..-1)
  end

  def the_shift(offset, key)
    shift_values = []
    offset.each_char.with_index do |char, index|
      shift_values.push(char.to_i + key.slice(index..index+1).to_i)
    end
    shift_values
  end

  def shift(key, date)
    offset = offset_value(date)
    shift = the_shift(offset, key)
  end
end

#   def find_keys(key)
#     a_key = key[0..1].to_i
#     b_key = key[1..2].to_i
#     c_key = key[2..3].to_i
#     d_key = key[3..4].to_i
#     [a_key, b_key, c_key, d_key]
#
#   end
#
#   def find_keys_for_date(offset_value)
#     a_key = offset_value[0].to_i
#     b_key = offset_value[1].to_i
#     c_key = offset_value[2].to_i
#     d_key = offset_value[3].to_i
#     [a_key, b_key, c_key, d_key]
#   end
#
#   def calculate_shift(key, offset_value)
#     x = find_keys(key).zip (find_keys_for_date(offset_value))
#     x.map(&:sum)
#   end
# end
