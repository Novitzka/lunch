require 'singleton'
require_relative 'Order'

class OrdersController

  include Singleton

  def initialize()
    @orders = []
  end

  def createNewOrder(restaurant)
    order = Order.new @orders.count, restaurant
    @orders.push(order)
    return order
  end

  def updateOrder(id, meal, price)
    order = findOrder(id)
    if order != nil then
      order.update(meal, price)
    end
    return order
  end

  def findOrder(id)
    for order in @orders
      if order.getID == id then
        return order
      end
    end
    return nil
  end

end
