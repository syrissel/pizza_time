class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
    @pizza_order = current_order.pizza_orders.new
  end

  def show
    @pizza = Pizza.find(params[:id])
  end
end
