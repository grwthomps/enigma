require './test/test_helper'
require './lib/date_generator'
require 'mocha/minitest'

class DateGeneratorTest < Minitest::Test

  def test_creating_date
    assert_equal 6, DateGenerator.create_date.length
    assert_equal String, DateGenerator.create_date.class
  end

end
