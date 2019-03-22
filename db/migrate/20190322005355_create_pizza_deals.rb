class CreatePizzaDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :pizza_deals do |t|
      t.references :pizza, foreign_key: true
      t.references :deal, foreign_key: true

      t.timestamps
    end
  end
end
