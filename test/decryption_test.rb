require './test/test_helper'
require './lib/decryption'
require 'mocha/minitest'

class DecryptionTest < Minitest::Test

  def test_shift_nums
    key_arr = ["0", "2", "7", "1", "5"]
    date_last_four = "1025"
    assert_equal [3, 27, 73, 20], Decryption.shift_nums_helper(key_arr, date_last_four)
  end

  def test_shift_letters
    alpha_arr = ("a".."z").to_a << " "
    message_arr = ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"]
    shift_nums_arr = [3, 27, 73, 20]
    assert_equal "hello world", Decryption.shift_letters_helper(alpha_arr, message_arr, shift_nums_arr)
  end

  def test_encrypt_with_stubs
    Decryption.stubs(:shift_nums_helper).returns [3, 27, 73, 20]
    Decryption.stubs(:shift_letters_helper).returns "hello world"

    assert_equal "hello world", Decryption.decrypt("keder ohulw", "02715", "040895")
  end

  def test_decrypt_real_example
    assert_equal "hello world", Decryption.decrypt("keder ohulw", "02715", "040895")
  end

end
