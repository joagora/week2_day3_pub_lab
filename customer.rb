class Customer

  attr_reader :name, :age, :money_amount

  def initialize(name, age, money_amount)
    @name = name
    @age = age
    @money_amount = money_amount
    @drunkeness_level = 0
  end


end
