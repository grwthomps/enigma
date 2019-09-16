require './test/test_helper'
require './lib/enigma'
require 'mocha/minitest'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_encrypt_with_all_params_given
    expected = {
                  encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                }

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_decrypt_with_all_params_given
    expected = {
                  decryption: "hello world",
                  key: "02715",
                  date: "040895"
                }

    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_encrypt_with_only_key_given
    DateGenerator.stubs(:create_date).returns "150919"
    expected = {
                  encryption: "njhauesdxq ",
                  key: "02715",
                  date: "150919"
                }
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_decrypt_with_only_key_given
    DateGenerator.stubs(:create_date).returns "150919"
    expected = {
                  decryption: "hello world",
                  key: "02715",
                  date: "150919"
                }
    encrypted = @enigma.encrypt("hello world", "02715")

    assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_encrypt_with_random_key
    RandomGenerator.stubs(:create_key).returns "02715"
    DateGenerator.stubs(:create_date).returns "150919"
    expected = {
                  encryption: "njhauesdxq ",
                  key: "02715",
                  date: "150919"
                }
    assert_equal expected, @enigma.encrypt("hello world")
  end

end
