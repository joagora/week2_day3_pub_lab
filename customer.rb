require_relative("drink")
class Customer

  attr_reader :name, :age, :money_amount, :drunkenness_level

  def initialize(name, age, money_amount)
    @name = name
    @age = age
    @money_amount = money_amount
    @drunkenness_level = 0
  end

  def buy_drink(drink)
    @money_amount -= drink.price
    @drunkenness_level += drink.alcohol_level
  end

end
