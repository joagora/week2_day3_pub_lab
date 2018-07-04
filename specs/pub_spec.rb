require("minitest/autorun")
require_relative("../pub")

class TestPub < MiniTest::Test
  def setup
    @spoons_pub = Pub.new("Spoons", 1000)
  end

  def test_till
    expected = 1000
    actual = @spoons_pub.till_amount
    assert_equal(expected, actual)
  end

end
