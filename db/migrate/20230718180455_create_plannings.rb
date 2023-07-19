class CreatePlannings < ActiveRecord::Migration[7.0]
  def change
    create_table :plannings do |t|
      t.text :description
      t.string :class
      t.date :date
      t.float :revenue

      t.timestamps
    end
  end
end
