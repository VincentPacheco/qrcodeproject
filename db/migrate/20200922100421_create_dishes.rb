class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :ingredient

      t.timestamps
    end
  end
end
