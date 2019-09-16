require './test/test_helper'
require './lib/random_generator'
require 'mocha/minitest'

class RandomGeneratorTest < Minitest::Test

  def test_random_key_properties
    assert_equal 5, RandomGenerator.create_key.length
    assert_equal String, RandomGenerator.create_key.class
  end

  def test_creating_random_key
    RandomGenerator.stubs(:create_key).returns "02715"

    assert_equal "02715", RandomGenerator.create_key
  end

end
