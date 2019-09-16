require './test/test_helper'
require './lib/encryption'
require 'mocha/minitest'

class EncryptionTest < Minitest::Test

  def test_shift_nums
    key_arr = ["0", "2", "7", "1", "5"]
    date_last_four = "1025"
    assert_equal [3, 27, 73, 20], Encryption.shift_nums_helper(key_arr, date_last_four)
  end

  def test_shift_letters
    alpha_arr = ("a".."z").to_a << " "
    orig_message_arr = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    shift_nums_arr = [3, 27, 73, 20]
    assert_equal "keder ohulw", Encryption.shift_letters_helper(alpha_arr, orig_message_arr, shift_nums_arr)
  end

  def test_encrypt_with_stubs
    Encryption.stubs(:shift_nums_helper).returns [3, 27, 73, 20]
    Encryption.stubs(:shift_letters_helper).returns "keder ohulw"
    
    assert_equal "keder ohulw", Encryption.encrypt("hello world", "02715", "040895")
  end

  def test_encrypt_real_example
    assert_equal "keder ohulw", Encryption.encrypt("hello world", "02715", "040895")
  end

end
