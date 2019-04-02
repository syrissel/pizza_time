class CartsController < ApplicationController
  def show
    @pizza_orders = current_order.pizza_orders
  end
end
