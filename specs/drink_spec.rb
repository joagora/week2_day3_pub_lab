require("minitest/autorun")
require_relative("../drink")

class TestDrink < MiniTest::Test
  def setup
    @smirnoff_drink = Drink.new("Smirnoff", "vodka", 13, 40)
    @budweisser_drink = Drink.new("Budweisser", "beer", 2, 2)
  end

  def test_name
    expected = "Smirnoff"
    actual = @smirnoff_drink.name
    assert_equal(expected, actual)
  end
end
