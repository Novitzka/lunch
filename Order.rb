require 'JSON'
require_relative 'Meal'

class Order

  def getRestaurant()
    return @restaurant
  end

  def getID()
    return @id
  end

  def initialize(id, restaurant)
    @meals = []
    @id = id
    @restaurant = restaurant
  end

  def update(meal, price)
    meal = Meal.new meal, price
    @meals.push(meal)
  end

  def serialize()
    serialized_meals = []
    for meal in @meals
      serialized_meals.push(meal.serialize)
    end
    return {:id => @id, :restaurant => @restaurant, :meals => serialized_meals}
  end

end
