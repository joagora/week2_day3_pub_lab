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

  def increase_till_amount(drink)
    @till_amount += drink.price
  end

  def find_drink(drink_name)
    for drink in @drinks_stock
      if drink.name == drink_name
        return drink
      end
    end
    return nil
  end

  def remove_drink_from_stock(drink)
    @drinks_stock.delete(drink)
  end
end
