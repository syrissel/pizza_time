class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.order(:name)
  end

  def show
    @pizza = Pizza.find(params[:id])
  end
end
