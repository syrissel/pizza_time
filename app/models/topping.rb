class Topping < ApplicationRecord
  validates :name, presence: true
  has_many :pizzas, :through => :pizza_toppings
end
