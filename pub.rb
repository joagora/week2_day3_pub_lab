class Pub

  attr_reader :name, :till_amount
  attr_writer :till_amount
  def initialize(name, till_amount)
    @name = name
    @till_amount = till_amount
    @drinks_stock = []
  end


  def till_amount
    return @till_amount
  end

end
