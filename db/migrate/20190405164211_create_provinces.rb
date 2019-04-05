class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :pst, precision: 12, scale: 3
      t.decimal :gst, precision: 12, scale: 3
      t.decimal :hst, precision: 12, scale: 3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
