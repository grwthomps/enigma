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

  end

end
