class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :about_details
      t.string :contact_details
      t.string :contact_phone
      t.string :contact_address
      t.string :contact_email

      t.timestamps
    end
  end
end
