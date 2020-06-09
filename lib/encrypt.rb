require './lib/enigma'

enigma = Enigma.new

words = File.open(ARGV[0], "r")
incoming_text = words.read.strip
words.close

encryption = File.open(ARGV[1], "w")
encryption.write(enigma.encrypt(incoming_text))
encryption.close

puts "Created '#{ARGV[1]}' with the key #{enigma.key} and the date #{enigma.date}"
