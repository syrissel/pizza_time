class ToppingsController < ApplicationController
  def index
    @toppings = Topping.all
  end
  
  def show
    @topping = Topping.find(params[:id])
    @topping_pizzas = Pizza.joins(:toppings)
  end

end
