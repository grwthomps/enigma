require './test/test_helper'
require './lib/date_generator'
require 'mocha/minitest'

class DateGeneratorTest < Minitest::Test

  def test_date_properties
    assert_equal 6, DateGenerator.create_date.length
    assert_equal String, DateGenerator.create_date.class
  end

  def test_creating_date
    DateGenerator.stubs(:create_date).returns "150919"

    assert_equal "150919", DateGenerator.create_date
  end

end
