require_relative("drink")
require_relative("pub")
class Customer

  attr_reader :name, :age, :money_amount, :drunkenness_level, :drunk
  attr_writer :drunk

  def initialize(name, age, money_amount)
    @name = name
    @age = age
    @money_amount = money_amount
    @drunkenness_level = 0
    @drunk = false
  end

  def pay_for(drink)
    @money_amount -= drink.price
  end

  def increase_drunkenness(drink)
    @drunkenness_level += drink.alcohol_level
  end

  def buy_drink(drink, pub)
    if pub.find_drink(drink.name) == nil
      return
    else
      pay_for(drink)
      increase_drunkenness(drink)
      pub.increase_till_amount(drink)
      pub.remove_drink_from_stock(drink)
    end
    become_drunk
  end

  def become_drunk
    if @drunkenness_level > 6
      @drunk = true
    end

  end


end
