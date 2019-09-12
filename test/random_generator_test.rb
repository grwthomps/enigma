require './test/test_helper'
require './lib/random_generator'

class RandomGeneratorTest < Minitest::Test

  def test_creating_random_key
    # RandomGenerator.stubs(:create_key).returns("00000")
    # # want to stub 5 digit number
    assert_equal 5, RandomGenerator.create_key.length
  end

  def test_creating_random_date
    skip
  end

end
