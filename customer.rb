require_relative("drink")
require_relative("pub")
class Customer

  attr_reader :name, :age, :money_amount, :drunkenness_level

  def initialize(name, age, money_amount)
    @name = name
    @age = age
    @money_amount = money_amount
    @drunkenness_level = 0
  end

  def buy_drink(drink, pub)
    @money_amount -= drink.price
    @drunkenness_level += drink.alcohol_level
    pub.till_amount += drink.price
    pub.drinks_stock.delete(drink)
  end

end
