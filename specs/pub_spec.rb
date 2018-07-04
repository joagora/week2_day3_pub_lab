require("minitest/autorun")
require_relative("../pub")

class TestPub < MiniTest::Test
  def setup
    @spoons_pub = Pub.new("Spoons", 1000)
    @budweisser_drink = Drink.new("Budweisser", "beer", 2, 2)
  end

  def test_till
    expected = 1000
    actual = @spoons_pub.till_amount
    assert_equal(expected, actual)
  end


  def test_add_drink_to_stock
    @spoons_pub.add_drink_to_stock(@budweisser_drink)
    expected = 1
    actual = @spoons_pub.drinks_stock.count
    assert_equal(expected, actual)

  end

end
