require("minitest/autorun")
require_relative("../customer")

class TestCustomer < MiniTest::Test
  def setup
    @mike_customer = Customer.new("Mike", 82, 100)
    @budweisser_drink = Drink.new("Budweisser", "beer", 2, 5)
  end

  def test_how_much_money
    expected = 100
    actual = @mike_customer.money_amount
    assert_equal(expected, actual)
  end

  def test_drunkenness
    expected = 0
    actual = @mike_customer.drunkenness_level
    assert_equal(expected, actual)
  end

  def test_buy_drink__less_money
    @mike_customer.buy_drink(@budweisser_drink)
    expected = 98
    actual = @mike_customer.money_amount
    assert_equal(expected, actual)
  end

  def test_buy_drink__more_drunk
    @mike_customer.buy_drink(@budweisser_drink)
    expected = 5
    actual = @mike_customer.drunkenness_level
    assert_equal(expected, actual)
  end

end
