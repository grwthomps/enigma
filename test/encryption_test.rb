require './test/test_helper'
require './lib/encryption'
require 'mocha/minitest'

class EncryptionTest < Minitest::Test

  def test_shift_nums
    assert_equal [3, 27, 73, 20], Encryption.shift_nums_helper(["0", "2", "7", "1", "5"], "1025")
  end

  def test_shift_letters
    alpha_arr = ("a".."z").to_a << " "
    orig_message_arr = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    assert_equal "keder ohulw", Encryption.shift_letters_helper(alpha_arr, orig_message_arr, [3, 27, 73, 20])
  end

  def test_encrypt
    assert_equal "keder ohulw", Encryption.encrypt("hello world", "02715", "040895")
  end

end
