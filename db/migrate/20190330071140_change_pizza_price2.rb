class ChangePizzaPrice2 < ActiveRecord::Migration[5.2]
  def change
    change_column :pizzas, :price, :decimal, precision: 12, scale: 3
  end
end
