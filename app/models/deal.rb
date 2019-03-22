class Deal < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: { only_integer: true }
  has_many :pizzas, :through => :pizza_deals
end