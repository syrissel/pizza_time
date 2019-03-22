class Order < ApplicationRecord
  belongs_to :user
  has_many :pizzas, :through => :pizza_orders
end
