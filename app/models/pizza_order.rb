class PizzaOrder < ApplicationRecord
  belongs_to :pizza
  belongs_to :order
end
