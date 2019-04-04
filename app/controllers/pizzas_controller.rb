class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all.page params[:page]
    @pizza_order = current_order.pizza_orders.new
    @pizzas_old = Pizza.order("name")
  end

  def show
    @pizza = Pizza.find(params[:id])
  end
end
