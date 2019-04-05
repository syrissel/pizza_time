class StaticController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

end
