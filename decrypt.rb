require './lib/enigma'

encrypted_file = File.open(ARGV[0], "r")
ciphertext = encrypted_file.read
encrypted_file.close
