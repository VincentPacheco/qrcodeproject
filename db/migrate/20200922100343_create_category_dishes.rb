class CreateCategoryDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :category_dishes do |t|

      t.timestamps
    end
  end
end
