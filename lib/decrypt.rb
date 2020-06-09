require './lib/enigma'

enigma = Enigma.new

words = File.open(ARGV[0], "r")
incoming_text = words.read.strip
words.close

decryption = File.open(ARGV[1], "w")
decryption.write(words, ARGV[2], ARGV[3])
decryption.write(enigma.decrypt(words, ARGV[2], ARGV[3])[:decryption])

puts "Created #{ARGV[1]} with the key #{enigma.decrypt(message, ARGV[2], ARGV[3])[:key]}, and date #{enigma.decrypt(message, ARGV[2], ARGV[3])[:date]}"
