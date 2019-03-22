class Topping < ApplicationRecord
  has_many :pizzas, :through => :pizza_toppings
end
