class AddPriceCentsToDishes < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :price_cents, :float
  end
end
