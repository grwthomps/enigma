require './test/test_helper'
require './lib/random_generator'
require 'mocha/minitest'

class RandomGeneratorTest < Minitest::Test

  def test_creating_random_key
    # RandomGenerator = mock
    # RandomGenerator.stubs(:create_key).returns("00000")
    # # want to stub 5 digit number
    # assert_equal "00000", RandomGenerator.create_key
    # stub that rand is being run?
    assert_equal 5, RandomGenerator.create_key.length
    assert_equal String, RandomGenerator.create_key.class
  end

end
