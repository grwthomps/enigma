require './lib/enigma'

enigma = Enigma.new

key = ARGV[2]
date = ARGV[3]

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

decryption_hash = enigma.decrypt(incoming_text, key, date)

decrypted_message = decryption_hash[:decryption]

writer = File.open(ARGV[1], "w")

writer.write(decrypted_message)

writer.close

puts "Created '#{ARGV[1]}' with the key #{decryption_hash[:key]} and date #{decryption_hash[:date]}"
