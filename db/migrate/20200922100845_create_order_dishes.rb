class CreateOrderDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :order_dishes do |t|

      t.timestamps
    end
  end
end
