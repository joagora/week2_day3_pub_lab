require_relative("drink")

class Pub

  attr_reader :name, :till_amount, :drinks_stock
  attr_writer :till_amount
  def initialize(name, till_amount)
    @name = name
    @till_amount = till_amount
    @drinks_stock = []
  end


  def add_drink_to_stock(drink)
    @drinks_stock << drink
  end



end
