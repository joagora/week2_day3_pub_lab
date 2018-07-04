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


  def test_increase_till_amount
    @spoons_pub.increase_till_amount(@budweisser_drink)
    expected = 1002
    actual = @spoons_pub.till_amount
    assert_equal(expected,actual)
  end

  def test_find_drink__drink_found
    @spoons_pub.add_drink_to_stock(@budweisser_drink)
    expected = @budweisser_drink
    actual = @spoons_pub.find_drink("Budweisser")
    assert_equal(expected, actual)
  end

  def test_remove_drink_from_stock
    @spoons_pub.add_drink_to_stock(@budweisser_drink)
    @spoons_pub.remove_drink_from_stock(@budweisser_drink)
    expected = 0
    actual = @spoons_pub.check_drinks_stock
    assert_equal(expected, actual)
  end

  def test_find_drink__drink_not_found
    @spoons_pub.add_drink_to_stock(@budweisser_drink)
    expected = nil
    actual = @spoons_pub.find_drink("Smirnoff")
    assert_equal(expected, actual)
  end


end
