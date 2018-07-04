class Drink

  attr_reader :name, :type, :price, :alcohol_level
  def initialize(name, type, price, alcohol_level)
    @name = name
    @type = type
    @price = price
    @alcohol_level = alcohol_level
  end

end
