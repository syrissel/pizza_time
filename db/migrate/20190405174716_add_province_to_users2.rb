class AddProvinceToUsers2 < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :province, foreign_key: true
  end
end
