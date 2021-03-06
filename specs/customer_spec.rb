require("minitest/autorun")
require_relative("../customer")

class TestCustomer < MiniTest::Test
  def setup
    @mike_customer = Customer.new("Mike", 82, 100)
    @budweisser_drink = Drink.new("Budweisser", "beer", 2, 5)
    @spoon_pub = Pub.new("Spoon", 1000)
    @smirnoff_drink = Drink.new("Smirnoff", "vodka", 13, 40)
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
    @spoon_pub.add_drink_to_stock(@budweisser_drink)
    @mike_customer.buy_drink(@budweisser_drink, @spoon_pub)
    expected = 98
    actual = @mike_customer.money_amount
    assert_equal(expected, actual)
  end

  def test_buy_drink__more_drunk
    @spoon_pub.add_drink_to_stock(@budweisser_drink)
    @mike_customer.buy_drink(@budweisser_drink, @spoon_pub)
    expected = 5
    actual = @mike_customer.drunkenness_level
    assert_equal(expected, actual)
  end

  def test_buy_drink__more_money_in_till
    @spoon_pub.add_drink_to_stock(@budweisser_drink)
    @mike_customer.buy_drink(@budweisser_drink, @spoon_pub)
    expected = 1002
    actual = @spoon_pub.till_amount
    assert_equal(expected, actual)
  end

  def test_buy_drink___added_to_stock
    @spoon_pub.add_drink_to_stock(@budweisser_drink)
    @mike_customer.buy_drink(@budweisser_drink, @spoon_pub)
    expected = 0
    actual = @spoon_pub.check_drinks_stock
    assert_equal(expected, actual)
  end

  def test_buy_drink__is_drink_in_stock
    @spoon_pub.add_drink_to_stock(@budweisser_drink)
    @mike_customer.buy_drink(@budweisser_drink, @spoon_pub)
    expected = 0
    actual = @spoon_pub.check_drinks_stock
    assert_equal(expected, actual)
  end

  def test_if_drunk__false
    expected = false
    actual = @mike_customer.drunk
    assert_equal(expected, actual)
  end


  def test_if_drunk__true
    @spoon_pub.add_drink_to_stock(@smirnoff_drink)
    @mike_customer.buy_drink(@smirnoff_drink, @spoon_pub)
    expected = true
    actual = @mike_customer.drunk
    assert_equal(expected, actual)
  end

end
