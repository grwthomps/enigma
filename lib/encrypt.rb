require './lib/enigma'

enigma = Enigma.new

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

encrypted_message = (enigma.encrypt(incoming_text))[:encryption]

writer = File.open(ARGV[1], "w")

writer.write(encrypted_message)

writer.close

puts "Created '#{ARGV[1]}' with the key #{(enigma.encrypt(incoming_text))[:key]} and date #{(enigma.encrypt(incoming_text))[:date]}"
