require_relative("drink")

class Pub

  attr_reader :name, :till_amount, :drinks_stock
  attr_writer :till_amount
  def initialize(name, till_amount)
    @name = name
    @till_amount = till_amount
    @drinks_stock = []
  end

  def check_drinks_stock
    return @drinks_stock.count
  end

  def add_drink_to_stock(drink)
    @drinks_stock << drink
  end

  # pub.till_amount += drink.price
  # pub.drinks_stock.delete(drink)

  def increase_till_amount(drink)
    @till_amount += drink.price
  end

end
