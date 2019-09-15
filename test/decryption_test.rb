require './test/test_helper'
require './lib/decryption'
require 'mocha/minitest'

class DecryptionTest < Minitest::Test

  def test_shift_nums
    assert_equal [3, 27, 73, 20], Decryption.shift_nums_helper(["0", "2", "7", "1", "5"], "1025")
  end

  def test_encrypt
    assert_equal "hello world", Decryption.decrypt("keder ohulw", "02715", "040895")
  end

end
