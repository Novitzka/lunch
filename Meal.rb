require 'JSON'

class Meal

  def initialize(name, price)
    @name = name
    @price = price
  end

  def serialize()
    return {:name => @name, :price => @price}
  end

end
