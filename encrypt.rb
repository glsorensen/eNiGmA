require './lib/enigma'

message_file = File.open(ARGV[0], "r")
message = message_file.read
message_file.close
