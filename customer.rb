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

  def pay_for(drink)
    @money_amount -= drink.price
  end

  def increase_drunkenness(drink)
    @drunkenness_level += drink.alcohol_level
  end



  def buy_drink(drink, pub)
    pay_for(drink)
    increase_drunkenness(drink)
    pub.till_amount += drink.price
    pub.drinks_stock.delete(drink)
  end


end
