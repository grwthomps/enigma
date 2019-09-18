require './lib/date_generator'
require './lib/random_generator'
require './lib/encryption'
require './lib/decryption'

class Enigma

  def encrypt(enc_message, key = RandomGenerator.create_key, date = DateGenerator.create_date)
    {
      encryption: Encryption.encrypt(enc_message, key, date),
      key: key,
      date: date
    }
  end

  def decrypt(dec_message, key, date = DateGenerator.create_date)
    {
      decryption: Decryption.decrypt(dec_message, key, date),
      key: key,
      date: date
    }
  end

  def crack(enc_message, date = DateGenerator.create_date)
    Crack.decrypt(enc_message, date)
  end

end
