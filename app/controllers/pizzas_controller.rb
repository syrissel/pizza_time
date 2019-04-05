class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all.page params[:page]
    @pizza_order = current_order.pizza_orders.new
    @pizzas_old = Pizza.order("name")
    @query = params[:q]
    @pizza_search = Pizza.joins(:toppings).where('toppings.name LIKE ?', "%#{@query}%")
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def search
    @query = params[:q]
    @pizzas = Pizza.joins(:toppings).where('toppings.name LIKE ?', "%#{@query}%")
  end
end
