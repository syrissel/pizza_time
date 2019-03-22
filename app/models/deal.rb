class Deal < ApplicationRecord
  has_many :pizzas, :through => :pizza_deals
end
