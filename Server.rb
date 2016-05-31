require 'sinatra'
require 'JSON'
require_relative 'OrdersController'
require_relative 'Order'

post '/newOrder' do
  request_hash = JSON.parse request.body.read
  logger.info request_hash
  order = OrdersController.instance.createNewOrder(request_hash["restaurant"])
  order.serialize.to_json
end

post '/updateOrder' do
  request_hash = JSON.parse request.body.read
  logger.info request_hash
  order = OrdersController.instance.updateOrder(request_hash["id"], request_hash["meal"], request_hash["price"])
  order.serialize.to_json
end
