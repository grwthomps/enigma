require './test/test_helper'
require './lib/encryption'
require 'mocha/minitest'

class EncryptionTest < Minitest::Test

  def test_shift_nums
    assert_equal [3, 27, 73, 20], Encryption.shift_nums_helper(["0", "2", "7", "1", "5"], "1025")
  end

end
