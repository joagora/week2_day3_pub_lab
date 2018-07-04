require("minitest/autorun")
require_relative("../customer")

class TestCustomer < MiniTest::Test
  def setup
    @mike_customer = Customer.new("Mike", 82, 100)
  end

  def test_how_much_money
    expected = 100
    actual = @mike_customer.money_amount
    assert_equal(expected, actual)
  end



end
