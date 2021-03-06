# ruby tests/marathon_test.rb

require 'minitest/autorun'
require '../marathon_analysis.rb'

class MileTest < MiniTest::Test

  def test_mile_time
    assert_equal "09:09.6", average_mile("04:00")
    assert_equal "09:09.6", average_mile("4:00:00")
  end

  def test_decimal_to_seconds
    assert_equal "08:30.0", decimal_to_seconds(8.5)
    assert_equal "08:15.0", decimal_to_seconds(8.25)
  end

  def test_mile_pace_to_finish_time
    assert_equal "03:59:43", mile_pace("9:09")
  end

  def test_pace
    assert_equal "08:01 per mile", pace("01:45:00", 13.1)
  end
end
