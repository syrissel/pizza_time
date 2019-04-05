class ToppingController < ApplicationController
  def index
    @toppings = Topping.all
  end
  
  def show
    @topping_pizzas = Pizza.joins(:toppings).where('toppings.name LIKE ?', "%#{@query}%")
  end
end
