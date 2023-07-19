class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :email_address
      t.text :favorite_food
      t.text :mobile_phone_number

      t.timestamps
    end
  end
end
