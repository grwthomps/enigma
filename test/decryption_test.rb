require './test/test_helper'
require './lib/decryption'
require 'mocha/minitest'

class DecryptionTest < Minitest::Test

  def test_shift_nums
    assert_equal [3, 27, 73, 20], Decryption.shift_nums_helper(["0", "2", "7", "1", "5"], "1025")
  end

  def test_shift_letters
    alpha_arr = ("a".."z").to_a << " "
    message_arr = ["k", "e", "d", "e", "r", " ", "o", "h", "u", "l", "w"]
    assert_equal "hello world", Decryption.shift_letters_helper(alpha_arr, message_arr, [3, 27, 73, 20])
  end

  def test_decrypt
    skip
    assert_equal "hello world", Decryption.decrypt("keder ohulw", "02715", "040895")
  end

end
