require './lib/encryption'

class Enigma < Encryption

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

end

# why is encryption inheritance required but not decryption?
