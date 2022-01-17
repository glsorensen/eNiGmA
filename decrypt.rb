require './lib/enigma'

encrypted_file = File.open(ARGV[0], "r")
ciphertext = encrypted_file.read
encrypted_file.close

decrypting = Enigma.new
decryption = decrypting.decrypt(ciphertext, ARGV[2], date = ARGV[3] ||= Date.today.strftime("%d%m%y"))
