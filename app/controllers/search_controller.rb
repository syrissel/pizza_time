class SearchController < ApplicationController
  def index
    @query = params[:q]
    @pizzas = Pizza.joins(:toppings).where('toppings.name LIKE ?', "%#{@query}%")
  end
end
